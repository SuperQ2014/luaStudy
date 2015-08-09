--lua链表的实现
--参考资料：
--http://www.cnblogs.com/dzqdzq/p/3575237.html
node = {}
list = node

--初始化，构建一个空表
function init()
  list.value = 0  --存放链表的长度
  list.next = nil
end

--向链表的尾部增加数据
function addRear (d)
  node.next = {}
  node = node.next
  node.value = d
  list.value = list.value + 1  --长度加1
end

--向链表的头部增加数据
function addHead(d)
  newNode = {}
  newNode.value = d
  newNode.next = list.next
  list.next = newNode
  list.value = list.value + 1
end

--第i个位置 插入数据d   i>=1
function insert(i,d)
  if i < 1 then
    print('插入位置不合法')
    return
  end
  local j, k, l = i-1, 0, list
  while k<j do
    k = k + 1
    l = l.next
    if not l.next then
      break
    end
    if k ~= j then
      print('插入位置不合法')
      return
    end
    --开始插入
    newNode = {}
    newNode.value = d
    newNode.next = l.next
    l.next = newNode
    list.value = list.value + 1
  end
  
  --删除第i个位置的数据  i>=1，返回删除的数据的内容
  function del(i)
    if i < 1 then
      print('删除位置不合法')
      return
  end
  local j, k, l = i-1, 0, list
  while k < j do
    k = k + 1
    l = l.next
    if not l.next then
      print('删除位置不合法')
      return
  end
  --输入l.next.value时，几次软件卡死！！
  d = l.next.value
  temp = l.next.next
  l.next = nil
  l.next = temp
  list.value = list.value + 1
  return d
end

