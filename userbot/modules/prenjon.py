from time import sleep
from userbot.events import register


@register(outgoing=True, pattern='^.prenjon(?: |$)(.*)')
async def typewriter(typew):
    typew.pattern_match.group(1)
    sleep(1)
    await typew.edit("**Yahaha prenjon**")
    sleep(3)
    await typew.edit("**Enak ya kena prenjon**")
    sleep(6)
    await typew.edit("**Makannya jangan virtual**")

