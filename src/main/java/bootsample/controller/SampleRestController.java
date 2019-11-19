package bootsample.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class SampleRestController {

//    @Autowired
//    private TaskService taskService;
//	@GetMapping("/hello")
//	public String hello(){
//		return "Hello World!!!";
//		}

//	@GetMapping("/all-tasks")
//        public String allTasks(){
//		return taskService.findAll().toString();
//	}


//    @RequestMapping(method = RequestMethod.POST)
//    public String saveTask(@RequestParam int idCustomer, @RequestParam int balance) {
//        Task task = new Task(idCustomer, balance);
//        taskService.save(task);
//        return "input_account";
//    }



	/*@RequestMapping(method = RequestMethod.POST)
	public String deleteTask(@RequestParam int idAccount){
		taskService.delete(idAccount);
		return "Task deleted!";
	}*/

//	@GetMapping("/delete-task")
//	public String saveTask(@RequestParam int id){
//		taskService.delete(id);
//		return "Task deleted!";
//	}
}
