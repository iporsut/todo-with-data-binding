package todo

class Todo {
	String name
	List tasks
	static hasMany = [tasks:Task]

    static constraints = {
    }
}
