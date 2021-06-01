/*var commbtn=document.getElementById('commbtn')
commbtn.addEventListener('click',postComment)

function postComment(){
    req = new XMLHttpRequest()

    req.onreadystatechange=function(){
        // response receive as a variable named 'req'
        if(req.readyState===4){
            //meaning server process complete
            //we need to check HTTP Response code, 200
            if(req.status===200){
                /// you can proceed
                received_data = JSON.parse(req.response); // JSON.parse will convert the json string to JS object
                console.log("received data");
                if(received_data['error']==false){
                    ///placing dynamic html table data
                    
                    tablebody=document.getElementById('comlist');

                    var newrow=document.createElement('tr');

                    newrow.innerHTML="<td>"+' '+"</td>"+"<td>"+received_data['content']+"</td>";

                    tablebody.appendChild(newrow);
                }
                else{
                    console.log("error");
                }

            }
        }
    };

    const csrftoken = Cookies.get('csrftoken'); // {% csrf_token %}
    route=document.getElementById('route').value;
    rid=document.getElementById('pid0').value;
    content=document.getElementById('content').value;
    console.log(route)
    req.open("POST", route, true); // true = asynchronous
    req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); // no need for get request
    req.setRequestHeader('X-CSRFToken', csrftoken);
    console.log(rid);
    req.send("id="+rid+"con="+content);

}
*/