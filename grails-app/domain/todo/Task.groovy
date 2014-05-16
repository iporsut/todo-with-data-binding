package todo

class Task {
	String description
	Boolean done = false
	
	static belongsTo = [todo: Todo]

    static constraints = {
    }
}
