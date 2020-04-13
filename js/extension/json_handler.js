function handle_data_json(data, other_obj, handle_function, message_if_empty)
{
    try
    {
        if(data !== "CHUA_DANG_NHAP")
        {
            var obj = $.parseJSON(data);
            if(obj.length > 0)
            {
                handle_function(obj, other_obj);
            }
            else
            {
                if(message_if_empty !== null)
                {
                    showNotification("bg-red", message_if_empty, "bottom", "right", "", "");
                }
            }
        }
        else
        {
            window.location.href = "dang_nhap.php";
        }
    }
    catch(err)
    {
        showNotification("bg-red", data, "bottom", "right", "", "");
    }
    
    return null;
}

