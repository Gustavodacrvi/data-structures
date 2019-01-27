
class Stack{
  constructor(){
    this.arr = []
  }
  push(element){
    this.arr.push(element)
  }
  pop(){
    return this.arr.pop()
  }
  peek(){
    return this.arr[this.arr.length - 1]
  }
  isEmpty(){
    return this.arr.length == 0 
  }
}