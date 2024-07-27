let index = {
    init: function(){
        $("#btn-save").on("click", ()=>{//function(){}, ()=>{} this를 바인딩하기 위해서 사용하는 것임
            this.save();
        });
        $("#btn-update").on("click", ()=>{//function(){}, ()=>{} this를 바인딩하기 위해서 사용하는 것임
            this.update();
        });
    },

    save: function(){
       //alert('user의 save함수가 호출됨')
       let data = {
            username: $("#username").val(),
            password: $("#password").val(),
            email: $("#email").val()
       };

       //console.log(data);
       
       //ajax호출 시 default가 비동기 호출
       // ajax 통신을 이용해서 3개의 데이터를 json으로 변경하여 insert하도록 요청
       $.ajax({
        type: "POST",
        url: "/auth/joinProc",
        data: JSON.stringify(data),//http body데이터
        contentType: "application/json; charset=utf-8",//body데이터가 어떤타입인지
        dataType: "json"//요청을 서버로 해서 응답이 왔을 때 기본적으로 모든것이 String(문자열)인데 생긴게 json이라고 알려주면 => javascript로 변화시켜줌
       }).done(function(resp){
        alert("회원가입이 완료되었습니다");
        //console.log(resp);
        location.href = "/";
       }).fail(function(error){
        alert(JSON.stringify(error));
       }); 
    },
    
    update: function(){
       //alert('user의 save함수가 호출됨')
       let data = {
            id: $("#id").val(),
            password: $("#password").val(),
            email: $("#email").val()
       };
       $.ajax({
        type: "PUT",
        url: "/user",
        data: JSON.stringify(data),//http body데이터
        contentType: "application/json; charset=utf-8",//body데이터가 어떤타입인지
        dataType: "json"//요청을 서버로 해서 응답이 왔을 때 기본적으로 모든것이 String(문자열)인데 생긴게 json이라고 알려주면 => javascript로 변화시켜줌
       }).done(function(resp){
        alert("회원수정이 완료되었습니다");
        //console.log(resp);
        location.href = "/";
       }).fail(function(error){
        alert(JSON.stringify(error));
       }); 
    }
}

index.init();