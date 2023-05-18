import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Room extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            foregroundDecoration: const BoxDecoration(color: Colors.black26),
            height: 400,
            child: Image.network(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgWFhYYGBgaGBgcGhgYGhgaGhoaGhgZGhgYGBocIS4lHCErHxoYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISHjEhISExNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQECAwAGB//EAEkQAAECAgUFDAYJAwMFAQAAAAEAAgMRBBIhMUEFUWGRsRMUIjJScXKBocHR8AZikrLS4RUjM0JTc5PC8SSCogeDszRDY2SjVP/EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMEBf/EAB4RAQEBAQADAQEBAQAAAAAAAAABEQISITFRQXFh/9oADAMBAAIRAxEAPwDz4hrRjSDMGRV2hathzXkteqQxodPwfhc8d+bnuTV9Ha8TsB5YuOasO9ec3K1E0OmPhmQtbi092Za57/UvP4bNhlpqusPYdIOKmI8NLWlrzWsBax7gOkWg1euSIo0ZkVtludhsLdLThsWoaW6W58RocMOdb/xljuC40afdoRzWzVxCTAni0QCcxwTx25vXb3/ytaK0tNR1tk2u5TfEJtuOsXHzghYtFEpcVs7DjDebv7T8uaosIGhcaPoRFFJM2usc2wjvGgooQlQtEBWEBMNyUbkgA3toUGjaExENQYaYFu9tC7e+hMtzXbkmBaYOhVMHQme5LtyUwLDRlQ0ZNDCUGEmBUaOqmAmjoSo6EqFjoKruKZGCsY8mCZ/nQgW0iTRMoAwTMOcJuPFZm0uTJ0Il1Zwm+9rTcwcpyu2i3ztnfO93PmGYIFjaLjeTe67qbmGnFSYKZOYsnMUCykSYJkOPRa5x1NBKqGTE7RziR60c+QWRhE3zaP8AI8ww60ATm2yFpzBVFHJv4RzC4c5xRzw1gt4IzC1zudAx6Q51jeA3Rfr8FUxzmSviAaLLFyE3FSppjmuCIZLzehmQkRDhrjXWNmPGPzWohg3WhUZDBv8AmiGUfknx+ay2zY0tILbCMRYm9DyiHWP4Lrq+B0O8y5kEBn89S7c56Veerz8S8ynYaWmzVgege5bmKZTa2sZ3E1doSSj0pzBLjNxaf2nDYmUOI14rMM5e0NDhiF156nTlebDFq0LAc3XcQbwdCAh0mVh+R5kTDpTSZTE80xPnktIq+GQRK8cUk3jFjjsPzWjMoQze9jTi1zgCDmINxVnkOEkA7JYJJc+sTe50OCScLTUtVB2/4X4jPbb4qd/QvxGe23xQIyS3lj9OD8C5+TGC97RMyE4cATOYTZeoGG/YX4jPbb4qN+wvxGe23xQYyQ3lj9OD8CkZIHLH6cH4EBm/IX4jPbb4rt+QvxGe23xQf0QOWP04PwKDktswK7Zm4bnAmeYVEBm/IX4jPbb4qDTIX4jPbb4oT6IHLH6cH4FP0SOWP04PwICd+QvxGe23xUGmwvxGe23xQpySOWP04PwKjsmMEpvaJ3ThwBM5hwLUBTqZC/EZ7bfFU35C/EZ7bfFDOyS3lj9OD8CzOSm8ofpwfgQFPp0O4PYTgA4EnQAFgWEmseNgLwwd7tCxGTQ0za+qRcRDggjmIZYjGkAeetUUbCA285zk4nsGCq8Bc6M2ZExMXiYmOcLF8cYW6EFC4mc2yGBmDPTIXId5nd1nAc57lsQXX3Y2yA6Tu4IeJSgLGisRiRJo6IQduYbwiZes79rfJQkalG5gl6xtJ5syl7S4zcSTnPdmUOYs6YCMPE2nOb1UsW0WO0WY5kI+ufVBz36lLcXE1gpWO9vWPnqXKeUPGgmRHDGfnWi4VKGNixgwC8AttGdsjsRDqC83tOpSz/jUolkQHGaIY886UvormXEgoV+WjCMntrDReudlb16ZsSeOtWA0pRk7KrI5qsnWkTVINwvM7sc6aMmLgsXVaPM79fm9ZiI5ki10jnE1dpzjWpiQCADaJ5/Nqs0qKTlhtWT5Ndg4Tqk4TAtB0hZwKd641vSrKzbBzt2hXozbF35ts9uXUynzKd641v8ABatp/rjW/wAEopUF7GtLGF7iASLQA3lAgHGQuxWAfG/A/wAnfAtSVnY9E2n+uNb/AAVhT/XGt/gvP14ws3A+074FtB3Y/wDYNvrO+BXKbD4U/wBca3+CuKf641v8FNHyO4sD3NeJiZ4JkM9su1EMyKSJhryM4afBXxqeUDb/APXGuJ4LvpD1x/8ATwRf0GeQ/wBk+C76EdyInsu8FfGnlAf0h64/z8FBp/rj/PwRv0G7kP8AZd4KpyG7kP8AZd4KeNPKATT/AFxrf4Khp/rjW/wRETJBk6QcS28VTZoNli89F3Uf9g+074E8ejyhs6neuNb/AAWTqd641v8ABKSY05Cjn2nfAsi6NKe4GWes74FM6PKHDqb641v8Fk6l+uNb/BKnGP8A/mcet/wIiHDJY15bVJJBbmIJEp2TuzBLLDZW0SlDl9r/AAWtApjZEDhGekDRWJtPMl0RiIyKzjdLuCmqZOrP4xswAsA6lFQBFBiV0xxLiCLAZfyp11iya6LSgLBadHihIsQnGXMucTdJZOJzYLle7XScxDCADLMLevOsXxdKsJkGzNtUOoj3Cxp1KTavqKbqc65a/R7+Q7UVy1438Z2Gu/mOM4kCG53LaKjxzPFuohEMiQTxYkWHoeBEZr459oJMCtWr6PjHinVjqS9xe5jXMi1RaWOqn9Nxsv5S8jlp/CLHAtcJGqZTkTYbLCjorProvN3BIcovJjmZJ4DbzNebvibrtz3fh96GMnSLOQ/a1e7ZClKYXg/QE/1R/Kf7zF9Obm2rh1PbvKAEAG4rqfCcGMBF1bSLwmjWCV2pY5VZwWS09ymequ+48Xli4dJu1b0GHOSjLbbBZiNqMySy5Xj4z19eri0L7Gy+Ewaz8lRtFsNn3XHVYnUWwQz6kDb80LDPCI0RO89y9UrhYWOoxMjK8kavJV2sNtn3jtKaQhY0eu7Y5S9vG6jt8VdMMoI/pz0H96IoA+rZ0VmPsXdF+0rXJ/2bOijLeSiSklQgmSkBVmrAoFDW/wDUdIbXJM+i2EEYdzk6aZb45+9yFife5iP8XJqyFrqKQ4yGLR/kB4rB1FIaLLJO2vB2J07Hnb/ylc4cB3NE96J4pphLHo7mtNnF7LDJKKfClCJ/8r9pXrqe2yJzN/ae9eayi36j/dftWe/jXP1597URkRvG6XcFm9qJyM3jdLuC4x0NSEBEh8I2Ykpk5qzqTTqel5KHQTaefYfksokI5sE2ikhswwutlJsrLDaZkWIGIXn7rW6SS7skNqxOLWr0GgQzmzJ1AZwBZ5kkILy9zK5EmVuCGifCDc08RiqRaOCOEXP6Zc+XNWJku3M8XPq69E6mQxfEhjnc0HrtXLze5DMuWtY8WbVo1VbJasXp158efij62LzdwXn8oj689Bq9JSB9ZF5u4Lz2VR/UO6Ddq8/f9duf4ef6fD+rP5MT3mL6g0W+BXzH/Txs6WfyYnvsX1BjLepcK9EaMbessqjgs5j3LeG1WpUOtuYz/KazflX+vD5euHSbtCKyTgsPSBtg6Q95E5KwTj4nX17+OOAzoQfeCEgib/b2FGxeIz8uFtCDgccf3L0uLoR4TfzHdv8AK2vr6Afdae9YNPCb+ZtIWs7H9E7GhUNW/Yu5n7StKB9mzorJp+qd/f3rSgO+rZ0VWBE101xcoBQTNSFE1IQKDdSekPecsI4td17PmtyLKR0h7xWUXjHr/Z4qVqIYJ1v7ffmobxH9GLt+amj/AHuiNrD3qgPBf0Y2xpRV6aLIvRHY1i81Tx9QPzX9y9JSjZF6L+wNXnMpfY/7rtjVnr4k+krmojIwtd0u4IR77ETkR3G6XcFyjrTkqjhb2LWqqAW606+HLNrb/OKHjQziJc6Ii0cOaQ7QbyM4tlegHZOhj7jJ9ELfHxOvpcXMZHe5z2gGFK1w5bScdA1qkSlswdPohzvdCJY0bu9shLcpgSuk9o71MQKslu+25n/pv8FyLkoRATXhWEVMocCiG59fouL/AHAiWwKMPuRD/ZH8F6PLmOXh1ZsjyDxN8Tm8EgyyP6l3QG0r6YyiQaznb2eQc9XReHPC8J6Vta6kl7GVGFjW1TVBmCZmTSRiMcFw66nt145ov/Tr/qzP8GJ77F9ThubO5fM/9PYMqTP/AMT/AHmeC+m0aq5geJmYYZC8VpzB6MjPRLOuWb8ddk+tWxBmWzSJsOYHuSvKFL3JhdZcTboXnKH6XPMejg1Nxe8wn2cJry2cMzwDjZbmJWPuxfntT0heJSt4zc3KC1yUbkn9IacC4gYOG1H5CjVpGRAzkEA8xItV5no6vt9MicRnQhdyChccczkc8cCH0Ifcl7OMOZy9Di43s6feFZ7uC/oHuVSOJ0z7xUu4j+g7a1A0J+rd/erUJ/Abzd5Wbz9Wf71FDcKjebvK2xgovUh6oXBRXVxGwerB6xaVJKmAJrrKRz95WT+Pr2wlDX2Ujn/cVhT6U2G6ZtNsmi8mcK4dR1LNbjejG3+z9sNZjiu6MX/jYl1GyxDB4RLeARbnkxu1p6pImBSWva6qZya+fWxuPUVmWVRVLuidF+1i89lMfUn813utXoKXc/oxPeYvP5T+xP5p9xiX4T6QRAichDjdLuCHiInIH3ul3Bco6HjStmQZlDynOWGlHUSnMY3hhwzuDZt1hTu+jn6EjNLQZNrXWTqyvxkUujRXYQ7dLx8KZU3KkEzqPDsM3Xakr6U3lA9a3x75Tr6Dc9+7PIY2sYYmK9wrjGrnHYs4kSJyG+38lDIv9Q84bl+9sthVokRbxgNukT8Me2PBcrbopTAWKVIiWnHSi2Uuy3R3pC2LM/PToRLHOOHnrXK9V25kzDx9OaBdhn0L596Qtc53Ba53MCdi9Q4nHapZRQ42k9gXO9XWsmE3oXXhxqzmOaKjxMg3ktlsXtTT82A0dSwodChi0NBOkuKPYGi5oEtACe6eiqnwXRmls3mYlNomdnchqD6JDc6nDql7XkvLJ1mggOnVmCAcF6TdZIqiPnPn7kkxLdeZpuSqLAcDGrPcbagYw1pzE3OLRO0Zxcisn0iGHfU0eFCBvIYwuPOQAB2oP0siVntslIhupz1fJMyRVBdzAnYpt1cmPeu4kPoQ+5KoscMFZ1wa668kkAAaSSAmT4wqsEjMNYDZcRKYXnsovrvawXMmXdI8UdTST/cF6b6cIc0Ise0OIdYa2AFY4YztKyPEd0HbQtKOKsNg5T26hM7Q1UA4Lui79q0DYjjUlVJnXtEpYX9upUowfUbJsxI2zGfMtK/AuNtbGQtAmdPMphOiVBVlKRkSdOEhnWpWbGm9ycNngqgkGwapAqz64ZfOxwJzzzTtmqRXSFWRGkagArrPiKBMprF5ms20rjCYnISGfPgJdX8UjUpreaV87BbjKZBkkqXmhGiyN0h76VZRoD3xHWgOm4AyNsnNFoAkLCBZfamUCksIfJ06zhKQJFjiTOyxZUzLsGG+TyZkEgBpuLpj3Ssde256eLiQ6rw1hJJlZZXrGQqSmBOsSLJ3Yzkn9BozxbKQk60XOFW22Vpuvsw0pDv5gjCKXANEVpxJqtfwjIW3C5PfR/0gY972Pe0F5cWA2TLhJwE9AbZ81z5ntq+noqaLH9GL77F57Ko+pP5v7G+C9JSIocDVBNjxKwHhOaRedCTxoLIrajqzCSHVTIOmBKzBw0hdLPST68jFdYjPR48fpdwR1KyA4XPkfWFntNu1LDJWT4kOtWAIJsc0hwuGa0dYXHxsdNlN6K5rmxWWViRLRYLToSx+RoTGykHGVriJapGxM4dIYy8isbMJys79iWZYpUmEg3rc4n2s3q/ITmlQoFYBrSDK/hWNEgAT4Y4qKNk2HGbXFGqNNodWLS7SGtBkNNnWhciUHfMfhjgM4bxgRPgs6z2By9lS4i1JkZt15puSIbXTm8CrKW6OIneLLD29SX0jJ5DjVjS0E+M0VlenSmJ+etebdSiTMGzAWW+tJS9LkMN7xfxoepvxrkqrHOuU8jxP4YOeXWFuwebTtQkM+bkyorAfPiuNrtGz6tTNIi8gCxwmiYMA2EXGRnoNyR5YkHkf+vSDqDF6+gQpw4fQZ7jU8U8mMJpasaNSnupLochVEKvdbWrtbfmkU6ZRc6xo+TJR3Rpn7OpVlhWa+tPqktSJa3hwJ3hasgETlOV9iJY2So95rymbZbSp1mLHiPTEVIjBM2gOt0vet8jU11jQ940Ne5o1Ay7Ez9IchspEas97pMa1shIWgl0/8llR8l0aCRwZnOS93yTnm/S2fHphRI1VpbFJrNabWNJ4QnKZaUJRaFMB/CNaZnImZnbM55zWjMotdICbiJSAFtnXYsaNENRoIdwcRaJg3iquvpzHkOIZwTY4ysNgAVQw1TwXXOFx0LOE1rrDEaJkTBcZnNwTKZTNlDaLy4zvtI1ytVQPu7gypVcSc3gArMpL2tDRDfZiJ236EfDY1okAANAktQ4LSFW+nSluL/8ALwVDSXYwnnX8KcgqjorRm5sdSJtJoscuH2bxIzxlZnsl1pRSY07wZTnKd87pnml7S9JlSMRCfKzgytNtpAMh1rzNJJAmBmA57vHsU6agdkaqa0iTiLCZcq2xuq2SjKOS4dJYKwcD917CJyN4m4VXA8xQkMF73NaRNp+seRMA8hgNmea0flJjLKxxskANNgElmdLeWLfRSA0fZveTi+I8dcmECamD6OQGGYgMJlIV3OeBpaHkyNgtCg5YYbgNQVDlho+6FNMO4DXsEpWZqzzLmmbBoFiIc+sKr2Vhmc0OGoleadlwXybPUdYWRy4D4EDbinkY9G6ERxHlvqvBezU41m9RA0KsalCzdAWZ3NDnN9tomwaXBoXnzlqWAWb8uDkDqkr5GHtIgseBWm+fFlxpZw5pEhpsSKmZKNoZGMreBEFYS0ObKWooGPlMNm6GSx15DTJr89dnFJIEq0q2YrJ+VKwDgZ1h2XyKu/iYOya99GY+bK4c4Euh8OwCQEgKxvdhiVt9MseLHD55udKW5ROdY0mKx5m5vC5Qm13tC08xmk6/Tx/A+WHzdLA2nToS2ehHb1c+Ya6tLOOEBn4Ik4LJ1Ee3A9TXbJKUgXdRmK5KnZPpZtLXbFKZE2vZwGI+C6SAY9EQ3ri7GG92OcHvbWsLJG4teWh4IxmAE/o9Pa0BoAAAAAGAAkAvNh4lfi33gt2RE0x6qFTmFEMpLDO0X9wXlGxM5V2RpedGZNMetY8G5RAhl0QHADxXm4NJcbGzOzXdtTigUl7J22k+edXLTcCUzJtIfEe7c3VS4ynK64GU8wCrR8mxCZVTZfmHObk3fTHnFcylOGPZsW5MZtXomSao4Z5wMdBN5GhM56ktFNdnV9+uW2DBTNLd9k4qd9HOgYF4F6qIs+KOs3JcaRpXOpLs60hg58uMepqxdSeSJbUC6Kc6gxiiaMDwTJ1s8DbNJKewsBaJB0zVzCtY09s0S95FvalGVKXUa6ZtJAHWDdq7VOvi832V5VyuGcCFY0Yi9xxcV5x9KLrysaTEJJ0oWuubeinvxUtioauorIC90VC5YNeuDudASIio52Kxc8/JVL83WERo91iyox4AOafvELNz1ShxOO3M6fUR4grSC2uVXPVC5Q4rNVrDeWmsDI22jtRG/H8s6/kgTEDQXEyAv1gd6gZQZywo0O30/lHs8FCD38zlrlA3aVqwlYNMvmp3UDT5wGKmLoxr7OsbRitd8SQDaztAs8bkXBa0W3nOe7MrOTybse511mk2fMo+BBGPCnnu1Y9aEhxLrsMyKY+Vtq1OZE3TOG+QwWrI87rfPNJLWPErteb52Ihjxcqhg2McJXY9a0bFQLX2+duC0DxnVBu65lweULX8yUl4CrIsPwUh3maDEQasVo14vV1BBeorLEOCmd5u84po2LjoC4OWJeOf5SXVgro2c9eS9K40qoGk92zavTucM68P6WxJRJeqD561nr4R5+kxQBMmXm4IE0yywFa0iGSysReW1eYGRlr7ENILGtyJFIfoHUtG0o4gbFipmpq4I32c3b8lBphzDWfBZAhQ4hNMab7OYaz4KppTtGorIlVJTTGjqVo7VagROGcJjYfmUM4rMrUqYbPijOqGOM6Vq7CgOiUgVSJ4IbdTnOsqBJQGLNWNN0PKdrKlRVUqKftaTo7St2MAuB8451k18sfPmau19nOumOeiWZloyJLz8kNX0y6lYOsx1dSGi2xVq2Lz+c2KCD/5sWjYiKZsi9d1nat2Rv5FvWlTYlt61ZG70U0bGlj561oKR5nd5tSpsfT571bdb7fPnYoGm+Lpkc2zDzJc6kY29VnPOy35pcyJpnqV2RvPeqhkyKJ93yWjYwlKfdr8EqbSMysaRjPw83oGojWbJec6nd8Z434a0q31pM/PyXCkY+GE/kqhq+k3nzKfMuMa63G7t8Eq3yBptn5C7fWnHRbamhq6NZaeb54rynpNRjEewtlKUnGY4Mibbb79ibb4svEppXlJ1YSncM9v8Xeb1IR5Ta0iq0AASAtwwB04LzVIgPBscQF6OKy21ZPggrOrjze5ReUezwUbnFzns8F6AwgoMEJ5GEJhReUezwUGDF5WzwT10FZvhyz61dTxJNzi8rZ4Ltyi5z2JuGKdzTTCYwomfZ4KCyJnPZ4J0YIKoYKuphNVfnPYpDX8ops6AqOhpphaGv5RWrIcTlyRtRSGppgfe0X8TsXIysuU1cPQJX+fPetGM5vPnsULlRo1WBXLlBIcprrlyCzXWEy/laB8uzYuXIsWa/8AlWYbJ4dS5cgkPz5uvzerNiebbLlC5BZsSfnqCsIhx83d65cgqY3m3MrNimfmxcuRFd0wtHb5+aq6KOfzYuXIJL7wMx89qHivnhioXIQDH71hJSuWGmZUELlyDOehVcFy5UULV0ly5WorJQ5q5cgrJQWLlyqKli6quXIOq6Fy5cg//9k=',
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0, bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 250),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Crowne Plaza \nKochi, Kerala',
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 16.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: const Text(
                        '8.4/85 reviews',
                        style: TextStyle(color: Colors.white, fontSize: 13.0),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border),
                      color: Colors.white,
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  RatingBarIndicator(
                                    rating: 2.75,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 50.0,
                                    direction: Axis.horizontal,
                                  ),
                                ],
                              ),
                              const Text.rich(TextSpan(children: [
                                  WidgetSpan(
                                    child: Icon(Icons.location_on, size: 16.0, color: Colors.grey,)
                                  ),
                                  TextSpan(
                                    text: "8 km to LuluMall"
                                  )
                                ]), style: TextStyle(color: Colors.grey, fontSize: 12.0),)
                              ],
                            ),
                          ),
                          Column(
                            children: const <Widget>[
                              Text("\$ 200", style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0
                              ),),
                              Text("/per night",style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey
                              ),)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            primary : Colors.pink,
                            padding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                          ),
                          child: const Text("Book Now", style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                          ),),

                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Text("Description".toUpperCase(), style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0
                      ),),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Crowne Plaza Kochi, Kerala, is an ideal staying place for both the professional and leisure travelers from across the world. It is placed amidst exotic surroundings that comprised of alluring attractions of the city. The hotel is blessed with excellent accommodation arrangements in the presence of fully furnished rooms and suites. The staying facilities are majestically complimented by the traditional Indian hospitality at this five-star property. Moreover, the extensive premises of the hotel consist of excellent arrangements for business and personal events.",
                           textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                      const SizedBox(height: 10.0),
                      const Text(
                          "Crowne Plaza Kochi, Kerala", textAlign: TextAlign.justify, style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14.0
                          ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              title: const Text("DETAIL",style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal
              ),),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
              elevation: 0,
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border),
                    label: "Favorites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

