function isEmpty(value) {
    return value == null || value == "" || value == undefined
}

// 格式化时间
function formatDate(date,type) {
    if (date == null || date.length != 15) return null;
    var array = date.toString().split(' ')
    var year = array[3];
    var day = array[2];
    var month = "";
    switch (array[1]){
        case "Jan" : month = "01"; break;
        case "Feb" : month = "02"; break;
        case "Mar" : month = "03"; break;
        case "Apr" : month = "04"; break;
        case "May" : month = "05"; break;
        case "Jun" : month = "06"; break;
        case "Jul" : month = "07"; break;
        case "Aug" : month = "08"; break;
        case "Sep" : month = "09"; break;
        case "Oct" : month = "10"; break;
        case "Nov" : month = "11"; break;
        case "Dec" : month = "12"; break;
        default : month = "01";
    }
    if (type == null || type.length == 0) type = "-";
    return year+type+month+type+day;
}

/*根据出生日期算出年龄*/
function jsGetAge(strBirthday,type){
    strBirthday = formatDate(strBirthday,type)
    var returnAge;
    var strBirthdayArr= null;
    if (strBirthday.indexOf('-') > 0 ) strBirthdayArr = strBirthday.split("-")
    if (strBirthday.indexOf('/') > 0 ) strBirthdayArr = strBirthday.split("/")
    if (strBirthday.indexOf(' ') > 0 ) strBirthdayArr = strBirthday.split(" ")
    var birthYear = strBirthdayArr[0];
    var birthMonth = strBirthdayArr[1];
    var birthDay = strBirthdayArr[2];

    var d = new Date();
    var nowYear = d.getFullYear();
    var nowMonth = d.getMonth() + 1;
    var nowDay = d.getDate();

    if(nowYear == birthYear) returnAge = 0;//同年 则为0岁
    else{
        var ageDiff = nowYear - birthYear ; //年之差
        if(ageDiff > 0){
            if(nowMonth == birthMonth) {
                var dayDiff = nowDay - birthDay;//日之差
                if(dayDiff < 0) returnAge = ageDiff - 1; else returnAge = ageDiff ;
            } else {
                var monthDiff = nowMonth - birthMonth;//月之差
                if(monthDiff < 0) returnAge = ageDiff - 1; else returnAge = ageDiff ;
            }
        } else returnAge = -1;//返回-1 表示出生日期输入错误 晚于今天
    }
    return returnAge;//返回周岁年龄
}
