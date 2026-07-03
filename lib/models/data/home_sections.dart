typedef HomeSection = ({
  String label,
  String bgImage,
  List<SectionDetail> details
});

typedef SectionDetail = ({String label, String description, String url});

List<HomeSection> get homeSections => [
      (
        label: 'Ресурси',
        bgImage: 'assets/images/prints/snake.png',
        details: [
          (
            label: "Ветеран PRO",
            description:
                "Цифрова платформа, яка об'єднує сервіси, послуги, медичну та фінансову підтримку залежно від вашого регіону.",
            url: "https://veteranpro.gov.ua"
          ),
          (
            label: "Міністерство у справах ветеранів України",
            description:
                "Офіційний сайт відомства, де публікуються актуальні новини, програми відновлення та керівні документи.",
            url: "https://mva.gov.ua"
          ),
          (
            label: "Е-Ветеран",
            description:
                "Інформаційна система, на якій доступні довідники щодо пільг, а також інформація щодо послуг з психологічної допомоги.",
            url: "https://eveteran.gov.ua"
          ),
          (
            label: "Український ветеранський фонд",
            description:
                "Організація надає інформацію про кар'єрні можливості (наприклад, платформа Кар'єра ветерана) та гранти на розвиток власного бізнесу для ветеранів.",
            url: "https://veteranfund.com.ua"
          ),
          (
            label: "Портал Дія",
            description:
                "Місце, де можна подати заявку на отримання ветеранського бізнес-гранту або скористатися іншими електронними послугами.",
            url:
                "https://diia.gov.ua/services/grant-dlya-veteraniv-ta-chleniv-yihnih-simej"
          )
        ]
      ),
      (
        label: 'Державні програми підтримки ветеранів',
        bgImage: 'assets/images/prints/zebra.png',
        details: [
          (
            label: 'Бізнес та гранти',
            description:
                'Урядова програма «єРобота» надає гранти на започаткування або розвиток власного бізнесу ветеранами та їхніми родинами у розмірі від 250 тис. до 1 млн грн. Подати заявку можна через портал Дія.',
            url:
                "https://diia.gov.ua/services/grant-dlya-veteraniv-ta-chleniv-yihnih-simej"
          ),
          (
            label: 'Житлові програми',
            description:
                'Ветерани мають змогу отримати пільгові іпотечні кредити (програма єОселя), грошову компенсацію на придбання житла або компенсацію витрат на оренду, попередньо ставши на квартирний облік.',
            url:
                "https://veteranpro.gov.ua/thematic-block/zhytlo_ta_infrastruktura"
          ),
          (
            label: 'Медична та психологічна допомога',
            description:
                'Надання безоплатних ліків, стоматологічних послуг, безкоштовного протезування, а також реабілітація та психологічна підтримка.',
            url:
                "https://veteranpro.gov.ua/thematic-block/zdorovya_ta_vidnovlennya"
          ),
          (
            label: 'Фінансові виплати',
            description:
                'Щорічна разова грошова допомога до Дня Незалежності України (оформлюється через особистий кабінет на порталі Пенсійного фонду України).',
            url:
                "https://guide.diia.gov.ua/view/vyplata-shchorichnoi-razovoi-hroshovoi-dopomohy-veteranam-viiny-i-zhertvam-natsystskykh-peresliduvan-b6f9853d-5505-4d7c-93d6-dedb5830d737"
          ),
          (
            label: 'Освіта',
            description:
                'Програми професійного навчання, ваучери на перекваліфікацію та підтримка здобуття вищої освіти.',
            url: "https://veteranpro.gov.ua/thematic-block/osvita_ta_robota"
          ),
        ]
      ),
      (
        label: 'Бізнеси засновані ветеранами',
        bgImage: 'assets/images/prints/tiger.png',
        details: [(label: "", description: "", url: "")]
      ),
      (
        label: 'Волонтерство',
        bgImage: 'assets/images/prints/cheeta.png',
        details: [(label: "", description: "", url: "")]
      ),
      (
        label: "Цивільне суспільство [кар'єра]",
        bgImage: 'assets/images/prints/leopard.png',
        details: [(label: "", description: "", url: "")]
      ),
      (
        label: 'Саморозвиток [особистісне зростання]',
        bgImage: 'assets/images/prints/leaves.png',
        details: [(label: "", description: "", url: "")]
      ),
    ];
