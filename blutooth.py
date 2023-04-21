from bluetooth import *

print ("performing inquiry...")

nearby_devices = discover_devices(lookup_names = True)

print( "found %d devices" % len(nearby_devices))
uin_blutooth = []
for name, addr in nearby_devices:
    print (" %s - %s" % (addr, name))
    uin_blutooth.append(addr)

print(uin_blutooth)
if '201P017' in uin_blutooth:
    print("exist")
else:
    print("not exist")