// var allEventlist =[
//     "event 1",
//     "event 2",
//     "event 3",
//     "event 4",
//     "event 5",
//     "event 6"
// ];

console.log(allEventlist);

var specialEventIndex = 5;
//var specialEventIndex = 2;
var onlyregEventIndex = 4;
var regonlyEventIndex = 8;
//var onlyregEventIndex = 1;

////////////////////////////////////////////////////////

document.getElementById("isteNo").style.display = "none";
document.getElementById("videolink").style.display = "none";
document.getElementById("instaid").style.display = "none";
document.getElementById("specialEvent").style.display = "none";

var specialEventValue = allEventlist[specialEventIndex];
var onlyregEventValue = allEventlist[onlyregEventIndex];
var regonlyEventValue = allEventlist[regonlyEventIndex];
var eventsNo = 0;
var dropNo = 0;

var eventOptions = (list) => {
  evOp = [];
  list.forEach((eventName) => {
    if (eventName == "TRADE O' MANIA") {
      evOp.push(` <option> ${eventName} </option>  `);
    } else {
      evOp.push(` <option> ${eventName} </option>  `);
    }
  });
  return evOp;
};

var isteCheck = (checkbox) => {
  var isteNo = document.getElementById("isteNo");
  var coupon = document.getElementById("coupon");
  if (checkbox.checked) {
    isteNo.style.display = "block";
    coupon.style.display = "none";
  } else {
    isteNo.style.display = "none";
    coupon.style.display = "block";
  }
};

var addEvents = (events) => {
  eventsNo = events;
  // console.log(events);
  if (events > 3 || events < 1) {
    document.getElementById("eventSelect").value = "3";
    events = 3;
  }

  var eventHtml = "";

  for (i = 0; i < events; i++) {
    //elements create with ids event1 ,event2 , event
    eventHtml +=
      `     <div class="form-group mb-4" > <select id="event${
        i + 1
      }" name="event${
        i + 1
      }" class=\"form-control border-0 shadow form-control-lg\" onChange="validate(event.srcElement.id,value)" required>` +
      `     <option value="" disabled selected> Select event ${
        i + 1
      }</option>  ` +
      eventOptions(allEventlist).toString() +
      "     </select> </div>  ";
  }

  console.log(eventHtml);
  var elementContainer = document.getElementById("eventContainer");
  elementContainer.innerHTML = eventHtml;
};

var selectionList = [];
var validate = (id, value) => {
  // var dropIds = []
  // for(i=0; i<eventsNo; i++){
  //     dropIds.push(`event${i+1}`)
  // }
  // console.log(dropIds)

  console.log(id, value);

  if (value == specialEventValue) {
    console.log(specialEventValue);
    var kitbox = document.getElementById("specialEvent");
    var videolink = document.getElementById("videolink");
    videolink.style.display = "block";
    videolink.required = true;
    var instaid = document.getElementById("instaid");
    instaid.style.display = "block";
    instaid.required = true;
    var form = document.getElementById("loginForm");
    form.action = "/eventsubmit/fand";
    check = document.getElementById("eventSelect");
    if (check.value > 1) {
      check.value = "1";
      addEvents(1);
      event1box = document.getElementById("event1");
      event1box.value = allEventlist[specialEventIndex];
      alert("This event should be registered seperately");
    }
    //kitbox.innerHTML =` <input type=\"text\" name=\"needpcbkit\" >
    //<label for=\"vehicle1\"> Need kit for ${value} (Additional 800 Rs.) </label>` ;
    //kitbox.style.display="block";
  } else if (value == onlyregEventValue || value == regonlyEventValue) {
    newindex = allEventlist.indexOf(value);
    var form = document.getElementById("loginForm");
    form.action = "/eventsubmit/quiz";
    var videolink = document.getElementById("videolink");
    videolink.style.display = "none";
    videolink.required = false;
    var instaid = document.getElementById("instaid");
    instaid.style.display = "none";
    instaid.required = false;
    check = document.getElementById("eventSelect");
    if (check.value > 1) {
      check.value = "1";
      addEvents(1);
      event1box = document.getElementById("event1");
      event1box.value = allEventlist[newindex];
      alert("This event should be registered seperately");
    }
  } else {
    var videolink = document.getElementById("videolink");
    videolink.style.display = "none";
    videolink.required = false;
    var instaid = document.getElementById("instaid");
    instaid.style.display = "none";
    instaid.required = false;
    var form = document.getElementById("loginForm");
    form.action = "/eventsubmit";
  }

  console.log(" dddddddddddddddd", eventsNo, "   dd", dropNo);
  if (dropNo + 1 < eventsNo) {
    console.log("dorp no " + dropNo);

    var tempDrop = document.getElementById(`event${dropNo + 2}`);
    console.log(tempDrop, "  ", dropNo + 2, "           ////////////");
    var templist = [];
    console.log(allEventlist + ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
    templist = templist.concat(allEventlist);

    selectionList.push(value);
    console.log(templist + ">>>>>>>>>>>>>.");

    templist = templist.filter((n) => !selectionList.includes(n));

    // const index = templist.indexOf(value);
    // if (index > -1) {
    // templist.splice(index, 1);
    // }

    // templist = templist.splice(tempDrop.selectedIndex ,1);
    console.log("templist" + templist);
    tempDrop.innerHTML =
      `     <option> Select ${id}</option>  ` +
      eventOptions(templist).toString();
    console.log(eventOptions(templist));

    dropNo++;
  }

  // var drop = document.getElementById(id);
  // dropIds.pop(drop);

  // dropIds.forEach(changeDrop);

  // console.log(drop)
  // if(drop.selectedIndex <= 0) {
  //   alert(`Select an event for ${id}`);
  // }
};
