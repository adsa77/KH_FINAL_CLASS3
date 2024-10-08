function write01(empNo) {
    const projectNoValue = document.querySelector("#projectNo").value;
    const goalValue = document.querySelector("#goal").value;
    const personalScheduleValue = document.querySelector("#personalSchedule").value;
    const focusValue = document.querySelector("#focus").value;

    $.ajax({
        url: "/kpi/write",
        type: "POST",
        data: {
            empNo : empNo ,
            projectNo: projectNoValue,
            goal: goalValue,
            personalSchedule: personalScheduleValue,
            focus: focusValue,
        },
        success: (x) => {
            console.log("작성 성공");
            alert("등록 성공");
            location.href = "/kpi/list";
        },
        error: (x) => {
            console.log("통신 실패");
        },
    });
}
