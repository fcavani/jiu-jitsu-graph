import pydgraph


HOST = "localhost:9080"


SCHEME_FILE = "scheme.graphql"


MUTATION_FILES = [
    "jiujitsu.rdf",
    "authors.rdf",
    "progression.rdf",
    "movements - 100kg.rdf",
    "movements - finalização.rdf",
    "movements - guarda.rdf",
    "movements - meia guarda.rdf",
    "movements - passagem de guarda.rdf",
    "movements - quedas.rdf",
    "movements - transitions.rdf"
]


if __name__ == "__main__":

    client_stub = pydgraph.DgraphClientStub(HOST)
    client = pydgraph.DgraphClient(client_stub)

    op = pydgraph.Operation(drop_all=True)
    client.alter(op)

    print(">>>> Start up db - creating index...")

    with open(SCHEME_FILE, "r") as scheme_file:
        schema = scheme_file.read()
        op = pydgraph.Operation(schema=schema, run_in_background=True)
        client.alter(op)

    print(">>>> Start transaction.")

    txn = client.txn()
    try:
        mutations = list()
        for mutation_file in MUTATION_FILES:
            print(f">>>> Mutating: {mutation_file}")
            with open(mutation_file, "r") as file:
                nquads = ""
                raw_nquads = file.read()
                for line in raw_nquads.splitlines():
                    comment_position = line.find("#")
                    if not line.startswith('#'):
                        if comment_position > -1:
                            line = line[:comment_position]
                        nquads += line + "\n"
                mutation = txn.create_mutation(set_nquads=nquads)
                mutations.append(mutation)
        request = txn.create_request(mutations=mutations, commit_now=False)
        txn.do_request(request)
        txn.commit()
    finally:
        txn.discard()
