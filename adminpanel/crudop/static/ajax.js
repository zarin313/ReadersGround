var updbtn=document.getElementById('updbtn')
console.log("qaz")
updbtn.addEventListener('click',update)

function update(){
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
                    document.getElementById('bn').innerHTML=received_data['name'];
                    document.getElementById('wn').innerHTML=received_data['writer'];
                    document.getElementById('gn').innerHTML=received_data['genre'];
                    document.getElementById('rating').innerHTML=received_data['rate'];
                    document.getElementById('rc').innerHTML=received_data['review'];

                
                }
                else{
                    console.log("error");
                }

            }
        }
    };


    const csrftoken = Cookies.get('csrftoken'); // {% csrf_token %}
    pid=document.getElementById('pid').value;
    route=document.getElementById('route').value;
    
    name=document.getElementById('nameu').value;
    writer=document.getElementById('writeru').value;
    genre=document.getElementById('genreu').value;
    rate=document.getElementById('rateu').value;
    review=document.getElementById('reviewu').value;
    console.log(name);
    req.open("POST", route, true); // true = asynchronous
    req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); // no need for get request
    req.setRequestHeader('X-CSRFToken', csrftoken);
    
    req.send("pid="+pid+"&name="+name+"&writer="+writer+"&genre="+genre+"&rate="+rate+"&review="+review);

}
