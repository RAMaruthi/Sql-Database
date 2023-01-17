const emit=require("events");

const eventClass=new emit();

eventClass.on("insert",()=>{
    console.log("insert is sucessfully")
})
eventClass.on("delete",()=>{
    console.log("Delete is sucessfully")
})

eventClass.emit("delete");

eventClass.emit("insert");
eventClass.emit("insert");
eventClass.emit("insert");
eventClass.emit("insert");
