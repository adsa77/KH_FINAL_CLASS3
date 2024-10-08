window.addEventListener("load", onPageLoad);

function onPageLoad(){
    $.ajax({
        url: "/api/businessTrip/listForWriter",
        method: "get",
        success: (data) => {
            console.log("신청한 출장 리스트 통신 성공");
    
            const waitTable = document.querySelector("#wait > tbody");
            const approvalTable = document.querySelector("#approval > tbody");
            const returnTable = document.querySelector("#return > tbody");
    
            removeTag(waitTable);
            removeTag(approvalTable);
            removeTag(returnTable);
    
            let waitTableCnt = 0;
            let approvalTableCnt = 0;
            let returnTableCnt = 0;
    
            for(let i = 0; i < data.businessTripVoListForWriter.length; ++i){
                const trTag = document.createElement("tr");
    
                trTag.addEventListener("click", () => {
                    location.href = `/businessTrip/detail?no=${data.businessTripVoListForWriter[i].no}`;
                });
                trTag.style.cursor = "pointer";
    
                const tdTag02 = addTag("td", data.businessTripVoListForWriter[i].reason);
                const tdTag03 = addTag("td", data.businessTripVoListForWriter[i].divName + " " + data.businessTripVoListForWriter[i].empName + " " + data.businessTripVoListForWriter[i].positionName);
                const tdTag04 = addTag("td", data.businessTripApproverVoListForWriter[i].divName + " " + data.businessTripApproverVoListForWriter[i].approverName + " " + data.businessTripApproverVoListForWriter[i].positionName);
    
                const enrollDate = data.businessTripVoListForWriter[i].enrollDate.substring(0, 10);
                const approveDate = data.businessTripVoListForWriter[i].approveDate ? data.businessTripVoListForWriter[i].approveDate.substring(0, 10) : "";
    
                const tdTag05 = addTag("td", enrollDate);
                const tdTag06 = addTag("td", approveDate);
    
                let tdTag01 = "";
                let tdTag07 = "";
                if(data.businessTripVoListForWriter[i].state === "0"){
                    waitTableCnt++;
                    tdTag01 = addTag("td", waitTableCnt);
                    tdTag07 = addTag("td", "승인 대기");
                } else if(data.businessTripVoListForWriter[i].state === "1"){
                    approvalTableCnt++;
                    tdTag01 = addTag("td", approvalTableCnt);
                    tdTag07 = addTag("td", "승인 완료");
                } else if(data.businessTripVoListForWriter[i].state === "2"){
                    returnTableCnt++;
                    tdTag01 = addTag("td", returnTableCnt);
                    tdTag07 = addTag("td", "반려");
                }
    
                trTag.appendChild(tdTag01);
                trTag.appendChild(tdTag02);
                trTag.appendChild(tdTag03);
                trTag.appendChild(tdTag04);
                trTag.appendChild(tdTag05);
                trTag.appendChild(tdTag06);
                trTag.appendChild(tdTag07);
    
                if(data.businessTripVoListForWriter[i].state === "0"){
                    waitTable.appendChild(trTag);
                } else if(data.businessTripVoListForWriter[i].state === "1"){
                    approvalTable.appendChild(trTag);
                } else if(data.businessTripVoListForWriter[i].state === "2"){
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
            console.log("신청한 출장 리스트 통신 실패");
            console.log(error);
        }
    });
}
