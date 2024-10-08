$.ajax({
    url:"/notice/listData",
    type:"get",
    success : (data)=>{
        console.log("목록 조회 성공");
        console.log(data);

        const list = document.querySelector(".box");

        let str = "";

        for(let i = 0; i < data.length; i++){
            str += "<tr class='list' data-id='" + data[i].no + "'>";
            str += "<td>" + data[i].no + "</td>";
            str += "<td>" + data[i].title + "</td>";
            str += "<td>" + data[i].enrollDate + "</td>";
            str += "<td>" + data[i].writerNo + "</td>";
            str += "<td>" + data[i].hit + "</td>";
            str += "</tr>"
        }

        list.innerHTML = str;

        document.querySelectorAll(".list").forEach((x)=>{
          x.addEventListener("click", ()=>{
            const no = x.getAttribute("data-id");
            location.href="/notice/detail?no="+no;
          });
        });
    },
    fail : ()=>{
        console.log("목록 조회 실패");
    },
});