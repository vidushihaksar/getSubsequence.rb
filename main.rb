def getSubsequence(str)
  if(str.length()==0)
    arr=[];
    arr.push("");
    return arr;
  end


  ch = str[0,1];
  nstr = str[1, str.length-1]
  recAns = getSubsequence(nstr);

  myans=[];
  for i in recAns
    myans.push(i);
  end

  for i in recAns
    myans.push(ch+i);
  end

  return myans;


end

getSubsequence("abc")