class Queue{
  constructor(){
    this.arr = []
  }
  add(element){
    this.arr.push(element)
  }
  remove(){
    return this.arr.shift()
  }
  peek(){
    return this.arr[0]
  }
  isEmpty(){
    return (this.arr.length == 0)
  }
}
