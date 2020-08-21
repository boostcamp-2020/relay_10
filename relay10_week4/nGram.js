const fs = require('fs');
const { request } = require('http');


//ngram
const ngram = (s, num) =>{
    let res=[]
    let slen = s.length - num + 1
    for(let i =0; i< slen; i++){
        ss = s.slice(i,i+num);
        res.push(ss);
    }
    return res
}

const diff_ngram = (sa,sb,num) => {
    const a = ngram(sa,num)
    const b = ngram(sb,num)
    let r =[]
    let cnt =0
    for(let i of a){
        for(let j of b){
            if(i===j){
                cnt +=1
                r.push(i);
            }
        }
    }
    return cnt/a.length;
}

// file
const makeData = () => {
    let arr = [];
    const xlsx = require("xlsx");
    const excelFile = xlsx.readFile("dataBase.xlsx");
    const sheetName = excelFile.SheetNames[0];          // @details 첫번째 시트 정보 추출
    const firstSheet = excelFile.Sheets[sheetName];       // @details 시트의 제목 추출
    const jsonData = xlsx.utils.sheet_to_json(firstSheet, { defval: "" });
    for (i = 0; i < jsonData.length; i++) {
        arr.push([jsonData[i].ID, jsonData[i].NAME, String(jsonData[i].v1) + String(jsonData[i].v2) + String(jsonData[i].v3) +
            String(jsonData[i].v4) + String(jsonData[i].v5) + String(jsonData[i].v6) + String(jsonData[i].v7) + String(jsonData[i].v8)]);
    }
    return arr;
}

//logic
const findUser = (data,user) => {
    let max =0;
    let findUser = [];
    for(let i of data){
        if(i[0] === user[0]) continue;
        let temp = i[2];
        let num = diff_ngram(temp,user[2],2);
        if(num > max){
            max = num;
            findUser =[];
            findUser.push(i[0]);
        }else if(num == max){
            findUser.push(i[0]);
        }
    }
    return findUser;
}

const findUserStrc = (id,data) =>{
    for(let i of data){
        if(i[0] ===id) return i;
    }
}
let data = makeData();
let user = findUserStrc("J074",data);
let result = findUser(data,user);
console.log(result);
