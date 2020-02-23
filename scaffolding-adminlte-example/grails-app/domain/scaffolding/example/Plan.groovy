package scaffolding.example

class Plan {

    String name
    Date executionDate

    String toString() {
        return name
    }

    static constraints = {
        name()
    }
}
