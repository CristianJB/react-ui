var bases = 
{
    'list':function()
    {
        var result = {};
        $.ajax({ url: path+"bases.json", dataType: 'json', async: false, success: function(data) {result = data;} });
        return result;
    }
}