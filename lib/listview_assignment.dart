import 'package:flutter/material.dart';

class list_view extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Grouped Listview'))),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Android',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Android Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: ClipRRect(
                    borderRadius:BorderRadius.all(Radius.circular(4.0)),
                    child :Image.network(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAmVBMVEWBAH+3mLeAAnWAAX1+A36HAIN+AYeEAH6BAXmCAIC/n72BAIh8An6CA3h/AIqBAIPFp8XQsdHautfQss3Anb/YutpxAHt/AGqDAIaGAHu5k7l5A3+FAGx7AoXj/eX64/fr0OTixeTgyd3Vut3dtNPV4uXVsdlzAGx0AHS4h7h/AG+FAXTOps54Aou4kr2HAG5uCYq3jLHJzNZ3D0EWAAADH0lEQVR4nO3da2/aMBiGYRMH4pBjG06J6dqtZxhl3f//cUsgpTBFlNIi9Lx5ri+ooop9Y/ubBerH9fXNzc9fl6Usyy7SWn/LYDDoHG/Q/0h6kIuPZdnlluFweHt7d68eHkePo9GTu6ZrasVb636Rt0c1jK/0AdzPCo0JR+Nn9RD1TBLrpGRtsnl3W5KsXj49ROPDmn1+/o0DJdus1mVhobJZONPWcaKV+sU0cY7U/LQd0QkYM5+bp2mhfs+DfBJ4dXewFjfpHavxabuCb7GzhEk8mcSL6EWl49BxE8esj0V9AGv+2iGnZI+3xzSqR9odt4ned5ob+Xnu22WhUieJVGDq7s2sdDVq/a/1Vjq2cO80VkN98SPc2F1DN8+VLXdpqt0oUHr3IwX13/bQPSfsdlSqdFV47smdgC4L3VVhuYZafKH8NZRfyF0K6b0wNHELCiXiGuJ7K+y3pFDyLm3JGvreuadzAptCj4WoWIiPhfhYiI+F+FiIj4X4WIiPhfhYiI+F+FiIj4X42lM46LpRT/RNhbLQkV3YYSEsFuJjIT4W4mMhPhbiYyE+FuJjIT4W4mMhPhbiYyE+FuJjIT4W4mMhPhbiYyE+FuJ7vzEURoGSfOtL/r02FuJiIT4W4mMhPhbiYyE+FuJjIT4W4mMhPhbiYyE+FuJjIT4W4mMhvhYVyv/GcuWawJd8U6Ff/QqL7EJP/Bp2xRd60ndpqlQuvFC7kezfKGnDL1q1olD03cSWrKH8Qu5SSCzEx3OIr2WF3KWQWIiP5xAfC/HxHOJrWSF3KSQW4uM5xMdCfDyH+FpUqKXv0gu3LPRYiIiF+FiIj4X4WIiPhfhYiI+F+FiIj4X4WIiPhfhYiI+F+FiIj4X4WIivPYWZa6PES/xzz+f7vRcmwgsvW1AofZe2YQ1ZiIqF+FiIj4X4NoWh5MKwLBxaa2LfLf+WxiR6ZqOy0Jj5JM/PPZ0TSOKJWnSLslBXhT159MRzrvKyMKy+3VM58sz0fBwuO+p2ZJ8W1rry2MVV+Md21N10PI2W0648UTdf2vmrun8uipei6AhUVb3+/QdMNJCi0XjVlgAAAABJRU5ErkJggg==')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Flutter',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Flutter Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: ClipRRect(
                  borderRadius:BorderRadius.all(Radius.circular(4.0)),
                  child:Image.network(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAeFBMVEUAgAD///8AewCgwqAAeQCjyKMAdwCqz6q01bS+3L4AdQAAfgDL48v3+vcAfADY6tjn8eeUw5QWihYAgwBIm0j0+/RAl0DT59Ph7uEvkS9lpWUliiVxr3FToVPc7NygyqBqrWoahxqKvYpYn1g6lTpepl50sXQwjjAQcEIAAAAD0UlEQVR4nO3d6XKqQBSF0e6WoNBMCg0ao2bQ5P3f8B5H4sAdqsLt2ofz/U+xV6mAZUqV7iy95IqiWOd5nuyLDk0ujU89XTf6127+ftzWHut4bBrR0Jo1rXKXjZ0M9Yi23rys6uVsVqrSmjCO47At6Mj8dF0Hoto1tC0wqizL5aJ+njbur4T551cWZNZahRTttSZYvuR/FCYrY7BsVxlTRb8VzlcxMO+Qjat1t3BcZr4H/kCZ2nQJPwPf436o4PWhMF1xARKxcvdCVxnfu34wUxe3wpQVcE90N8IVLyARq2shm5NM2/l0cxSO+QGJuGmFc99j+snmF+GKw4X+vqw+C6PY95aeCicn4Qr9XrQrWx+Fa24XijbTHISffIXZ616YLrk+Sak3R8KG47XwXJCQcMr3SUovxHcSPvO8GB6zHySsGL8MlV2QcMFZqGapSme+R/RaScLS94h+I6HvCf1mBiHkfDlUKh6EkPNNGwmdSrm+/T0WFsoxF85VEfoe0WthLkL0SJgzFyYiRI+EDW9hkKiEuTASIXokjHjfeQcTEaInQvxIOGEuHIsQPRHiNwghy3/4ajNPIkRPhPiJED8R4jcMIe9PuUn4xFw4EiF6IsRPhPiRcCRC7ESInwjxEyF+IsRPhPiJED8R4idC/ESInwjxEyF+IsRPhPiJED8R4idC/ESInwjxEyF+IsRPhPiJED8R4idC/ESInwjxEyF+IsRPhPiJED8R4idC/ESInwjxEyF+IsRPhPiJEL9BCPl/P40IwRMhfiLEj4T8v/tyAN9fKkLsRIifCPETIX6DEPL/nRkRgidC/AYh5P/7hyIET4T4kZD/bzqLEDwSNsyFicp5C0MRwkfCgrkwFyF6JHSx7xG9Fs5VylxYqJT3nXfoVMr7U+44HYLQ94Z+M4MQlr5H9Jol4cz3iF4rU6UX1veKPpuRsOYstAsSPrMWfmilp5wviOadhA3n27YgIaFb+p7RY2+OhPqF79M02+m9MOcrNMlBqCuuZ1O71UdhxPVNcDg5CXWV+d7SS4eH8Chc+97ST7a5CPWG4zUxmOpWqF/5Ec1Ofxfqitslw2zTa6GreRHNl9PXQl2wIpqvQt8Ktav4vBbN1ul7IaPTTbBL9UOh3lgOl35rp99RV0Kd1yH6PaoNt43uFmo9qQ3y45iZ7eRGdCvUunl9C4zFeyitNcHbLrnz3AvprJq8fyxmpTImjuPwVHCd+f/dLDgPC+PYGFvOFh/viXugeSTcl55yxTzP84SKomiyb3zoqW3UZ9+OczzwYQNt2U+iZfPCnad2SH4BJpgwXt1mMSMAAAAASUVORK5CYII=')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'IOS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text('IOS Tutorial',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: ClipRRect(
                  borderRadius:BorderRadius.all(Radius.circular(4.0)),
                  child:Image.network(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAYFBMVEX/v839wc3/vMz33OL6v8v/v8n9wcv9wcn1wcz75Of54OX5wcz2wsv95ev/vsvzwsz96u352+L6w8n13t78/vz+9vf+7/T97u/68/Dow8vxxcz2xMr14eT94er/usr/wMcz2SBeAAACiUlEQVR4nO3di27aMABGYcdxLpBgSNhK1wJ7/7ecqWlRBRoBLYuO838CRUIQfGKLi4iE+fHz5WW3262iRbS8kj/pek+3LAZYDbaJwnZ12Lya3a+6fnt7r6M2am5xj7q5l9va++rB1lHYOrfem0NjbVZ6840Nrm54irlv2L2ekIVdu84cnLW+8CExXD9Dnx3sd+cH/ZvjYPz9u3w0fD2jyUpzLDuzaH1RVb/LKItuPjp71NAjMWzf5WBFVLaN9+02FJZV31dR+behTV1YParvi6IPhf3HHJ67HxjUf+aLh1VV4avTHJ6OoB+0ymHCKrIuPxdOPZhRqJBPhXyzKkzUpXCkD76Tm03hspl6IKP5LGzH+no2ua85VCGWCvlUyKdCPhXyqZBPhXwq5FMhnwr5VMinQj4V8qmQbz6F6f/2lP4vpCrkuhSmakavNCrEOhfmziZ+1pcKwVTIp0I+FfKpkE+FfCrkUyGfCvlUyKdCPhXyqZBPhXwq5FMhnwr5Lue1TT2SscznjKH0z01UIZcK+VTIp0I+FfKpkE+FfCrkUyGfCvlUyKdCPhXyqZBPhXwq5FMhnwr5VMg3m8JF8v8zM49/tFIhlAr5VMinQj4V8qmQT4V8KuRTIZ8K+VTIp0I+FfKpkE+FfCrkm1mhn3o0YzgXrmrjy6qYejRjUCGfCvlUyKdCPhXyqZBPhXwq5FMhnwr5VMinQj4V8qmQT4V8KuRTId+l0CRfmP4cqpBKhXyzKdysjS1UyKRCPhXyzaYw5fdDY+McZmXTV1mC2saYdnlapakWNrFw5YzxRYqr1IbLMevMwVkbCm2CjDla14VV6sr2vXIJapssq/fmdd/l2+02T9By2XX73R+SJUblgZki5gAAAABJRU5ErkJggg==')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Java',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Java Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: ClipRRect(
                  borderRadius:BorderRadius.all(Radius.circular(4.0)),
                  child:Image.network(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAkFBMVEX/FJT8FpL/FJfkkMT9F4/7FJf7AIvomMn7FJj5FZr/EZn7FpP/E5H5AIj6AIb/EJrsp9Pzsdn3ut/6uN/4AILlnMntnc/4uOL2vN/glMP9AIjwo9Pkj8To/Pn+3fn8zvD7zun8xub9wuntstX8stvl4+nqAHHqAITuAH32AHXliL3mjMbqBoj8AIDlibznx9vevWf2AAAC/0lEQVR4nO3dC2+iQBiF4Y8BxoFhmNK6WJTtXtpubd3L//93S+u6QmMqvRhzxvPEmBCDfq+MRqNR+Xx19eXrt+8Xnaqqztbqup70xW38dpN96npxtl+13/X1ec/s8vJidnMrNz/u3HI5fVSW5bwsXefpbEvr7vRWboRy3+UjTfset9z9gyzuslwiUU9y7/OONybrMZ30jbo9B9e1izH5Ht6vB9tD9eVeWZ/plVQ/MyW2N9Gj4Y7yPmrEbOYjPLtzfWpNZhuplqm4JBoq1v5tJe8TvWB4Qy+y+w13UEki1jVST5XoebHT68d49fi7b3iXEavl2Q6JFpm3UuvM2PXjsDvbvczeacxK/hC9JWptmtlC+SiWs9KbqBgzBZrcJpLqkAtVxEJ0LMR3OoWLp0J77HEOYFiYHnucA2Ahvk3hp7lhIahhYcjPpROX5dGYN19wBoXRsac5BBbiYyE+FuJjIT4W4mMhPhbiYyE+FuJjIT4W4mMhPhbi2xYaSYL+HD92aeiFWikWYtoWhr9KWYhqUBixEBEL8bEQHwvxsRAfC/GxEB8L8bEQHwvxsRAfC/GxEB8L8bEQHwvxbQpbF36hCbww1qEXTrRRUdiFJ/C9NhaiYiE+FuJjIT4W4mMhPhbiYyE+FuJjIT4W4mMhPhbiYyE+FuJjIb7TKizCLwz+N9lZiImF+DaFtctU2IWL0quw/98i/H+0YiEuFuJjIT4W4mMhPhbiYyE+FuJjIT4W4mMhPhbiYyE+FuJjIT4W4mMhvk1h1RVaCbswD76QxxAVC/GxEB8L8bEQHwvxsRAfC/GxEB8L8bEQHwvxsRAfC/GxEB8L8Z1O4XWp0qRIjz3OAQwL7bHHOYBN4fk0ZyGobWH4q5SFqFiIj4X4WIjvf2GZp1HQr7xnznslWa6C02XlXlq5XCqbJNZGwVFJdwxd0xWKTeZFEh7psmxXOOseh0WQ7/FzKZRxsVy4LLNi0vD41JrMruTmXkduXujwiHZa/3qQ29+rpokD1LZN064e/vwF4u6AbPPUrIgAAAAASUVORK5CYII=')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Python',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: ListTile(
                title: Text(
                  'Python Tutorial',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text("HanTH"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("24/12/20"),
                      ],
                    )
                  ],
                ),
                leading: ClipRRect(
                  borderRadius:BorderRadius.all(Radius.circular(4.0)),
                  child:Image.network(
                        'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAA1BMVEXsVIVEh/vhAAAASElEQVR4nO3BgQAAAADDoPlTX+AIVQEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwDcaiAAFXD1ujAAAAAElFTkSuQmCC')),
              ),
            ),
          ],
        ));
  }
}
