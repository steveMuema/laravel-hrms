$(document).ready(function () {
    check_clock_time();
    setInterval(() => {
        check_clock_time();
        check_attendance_suummaries();
    }, 10000);

    //check clock in
    function check_clock_time() {
        $.ajax({
            type: "GET",
            url: "/api/attendance-cloacking",
            cache: false,
            success: function (response) {
                if (response == "") {
                    return;
                } else {
                }
            },
        });
    }
    function check_attendance_suummaries() {
        $.ajax({
            type: "GET",
            url: "/api/sign-in-sign-out",
            cache: false,
            success: function (response) {
                if (response == "") {
                    return;
                } else {
                }
            },
        });
    }
});
