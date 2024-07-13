window.addEventListener("load", onPageLoad);

function onPageLoad(){
    $.ajax({
        url: "/api/sign/listForWriter",
        method: "get",
        success: (data) => {
            console.log("기안 리스트 통신 성공");
    
            const waitTable = document.querySelector("#wait > tbody");
            const approvalTable = document.querySelector("#approval > tbody");
            const returnTable = document.querySelector("#return > tbody");
    
            waitTable.innerHTML = "";
            approvalTable.innerHTML = "";
            returnTable.innerHTML = "";
    
            let waitTableCnt = 0;
            let approvalTableCnt = 0;
            let returnTableCnt = 0;
 
            for(let i = 0; i < data.signVoListForWriter.length; ++i){
                const trTag = document.createElement("tr");
    
                trTag.addEventListener("click", () => {
                    location.href = `/sign/detail?no=${data.signVoListForWriter[i].no}`;
                });
                trTag.style.cursor = "pointer";
    
                const tdTag02 = addTag("td", data.signVoListForWriter[i].title);
                const tdTag03 = addTag("td", data.signVoListForWriter[i].empName);
                
                const enrollDate = data.signVoListForWriter[i].enrollDate.substring(0, 10);
                const latestApproveDate = data.signVoListForWriter[i].modifyDate ? data.signVoListForWriter[i].modifyDate.substring(0, 10) : "";

                const tdTag04 = addTag("td", enrollDate);
                const tdTag05 = addTag("td", latestApproveDate);

                let tdTag01 = "";
                let tdTag06 = "";
                if(data.signVoListForWriter[i].result === "1"){
                    approvalTableCnt++;
                    tdTag01 = addTag("td", approvalTableCnt);
                    tdTag06 = addTag("td", "결재 완료");
                } else if(data.signVoListForWriter[i].result === "2"){
                    returnTableCnt++;
                    tdTag01 = addTag("td", returnTableCnt);
                    tdTag06 = addTag("td", "반려");
                } else if(data.signVoListForWriter[i].result === "0"){
                    waitTableCnt++;
                    tdTag01 = addTag("td", waitTableCnt);
                    if(data.signVoListForWriter[i].step === "1"){
                        tdTag06 = addTag("td", "1차 결재 중");
                    } else if(data.signVoListForWriter[i].step === "2"){
                        tdTag06 = addTag("td", "2차 결재 중");
                    } else if(data.signVoListForWriter[i].step === "3"){
                        tdTag06 = addTag("td", "3차 결재 중");
                    }
                }

                trTag.appendChild(tdTag01);
                trTag.appendChild(tdTag02);
                trTag.appendChild(tdTag03);
                trTag.appendChild(tdTag04);
                trTag.appendChild(tdTag05);
                trTag.appendChild(tdTag06);
    
                if(data.signVoListForWriter[i].result === "0"){
                    waitTable.appendChild(trTag);
                } else if(data.signVoListForWriter[i].result === "1"){
                    approvalTable.appendChild(trTag);
                } else if(data.signVoListForWriter[i].result === "2"){
                    returnTable.appendChild(trTag);
                }

                const waitMarkTag = document.querySelector("#waitMark");
                const approvalMarkTag = document.querySelector("#approvalMark");
                const returnMarkTag = document.querySelector("#returnMark");

                waitMarkTag.innerHTML = waitTableCnt + " 건";
                approvalMarkTag.innerHTML = approvalTableCnt + " 건";
                returnMarkTag.innerHTML = returnTableCnt + " 건";
            }
        },
        error: (error) => {
            console.log("통신 실패");
            console.log(error);
        }
    });
}
