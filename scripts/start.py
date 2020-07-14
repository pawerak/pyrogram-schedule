from pyrogram import Client

app = Client("my_account", config_file="config.ini")
app.run()

app.stop()