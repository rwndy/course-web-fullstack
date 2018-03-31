function load() {
  const mydata = JSON.parse(data);
  const sentence = mydata.name + " with age " + mydata.age;
  alert(sentence);
}
