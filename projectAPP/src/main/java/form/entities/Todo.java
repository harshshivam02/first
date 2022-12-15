package form.entities;

import java.util.Date;

public class Todo {
private String todoTittle;
private String todoContent;
private Date  todoDate;

@Override
public String toString() {
	return "Todo [todoTittle=" + todoTittle + ", todoContent=" + todoContent + "]";
}
public Todo() {
	super();
	// TODO Auto-generated constructor stub
}
public Todo(String todoTittle, String todoContent, Date todoDate) {
	super();
	this.todoTittle = todoTittle;
	this.todoContent = todoContent;
	this.todoDate = todoDate;
}
public String getTodoTittle() {
	return todoTittle;
}
public void setTodoTittle(String todoTittle) {
	this.todoTittle = todoTittle;
}
public String getTodoContent() {
	return todoContent;
}
public void setTodoContent(String todoContent) {
	this.todoContent = todoContent;
}
public Date getTodoDate() {
	return todoDate;
}
public void setTodoDate(Date todoDate) {
	this.todoDate = todoDate;
}
}
