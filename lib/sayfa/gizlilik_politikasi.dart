import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Gizlilik Politikası',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black26),
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Markdown(data: _PRIVACY_POLICY),
    );
  }

  static const _PRIVACY_POLICY =  """
  Selam dostum bizi satmazsın değil mi? Nede olsa bu uygulama ücretsiz.

   Bu uygulama Cem Kırkoyun tarafından ücretsiz olarak tasarlanmış olup siz değerli kullanıcıların kullanımına açılmıştır.

   Bu sayfa, Hizmetimi kullanmaya karar verdiyse Kişisel Bilgilerin toplanması, kullanılması ve ifşa edilmesine ilişkin politikalarım hakkında ziyaretçileri bilgilendirmek için kullanılır.

Hizmetimi kullanmayı seçerseniz, bu politikaya ilişkin bilgilerin toplanmasını ve kullanılmasını kabul edersiniz. Topladığım Kişisel Bilgiler, Hizmeti sağlamak ve geliştirmek için kullanılır. Bu Gizlilik Politikasında açıklanan durumlar dışında bilgilerinizi kimseyle kullanmayacağım veya paylaşmayacağım.

Bu Gizlilik Politikasında kullanılan terimler, bu Gizlilik Politikasında aksi belirtilmedikçe Todo'dan erişilebilen Şartlar ve Koşullarımızla aynı anlamlara sahiptir.

** Bilgi Toplama ve Kullanma **

Daha iyi bir deneyim için, Hizmetimizi kullanırken bize kişisel olarak tanımlanabilir bazı bilgiler vermenizi isteyebilirim. İstediğim bilgiler cihazınızda saklanacak ve benim tarafımdan hiçbir şekilde toplanmayacak.

Uygulama, sizi tanımlamak için kullanılan bilgileri toplayabilecek üçüncü taraf hizmetleri kullanıyor.

Uygulama tarafından kullanılan üçüncü taraf hizmet sağlayıcılarının gizlilik politikasına bağlantı


* [Firebase Analytics] (https://firebase.google.com/policies/analytics)

** Günlük Verileri **

Hizmetimi her kullandığınızda, uygulamada bir hata olması durumunda telefonunuzda Günlük Verisi adı verilen veri ve bilgileri (üçüncü taraf ürünleri aracılığıyla) topladığımı bildirmek istiyorum. Bu Günlük Verileri, cihazınızın İnternet Protokolü (“IP”) adresi, cihaz adı, işletim sistemi sürümü, Hizmetimi kullanırken uygulamanın yapılandırması, Hizmeti kullanım tarih ve saati ve diğer istatistikler gibi bilgileri içerebilir. .

**Cookies**

Çerezler, genellikle anonim benzersiz tanımlayıcılar olarak kullanılan az miktarda veri içeren dosyalardır. Bunlar, ziyaret ettiğiniz web sitelerinden tarayıcınıza gönderilir ve cihazınızın dahili belleğinde saklanır.

Bu Hizmet bu “çerezleri” açıkça kullanmaz. Ancak uygulama, bilgi toplamak ve hizmetlerini geliştirmek için "çerezler" kullanan üçüncü taraf kodlarını ve kitaplıklarını kullanabilir. Bu çerezleri kabul etme veya reddetme ve cihazınıza bir çerez ne zaman gönderildiğini bilme seçeneğiniz vardır. Çerezlerimizi reddetmeyi seçerseniz, bu Hizmetin bazı bölümlerini kullanamayabilirsiniz.

**Servis sağlayıcıları**

Aşağıdaki nedenlerden dolayı üçüncü taraf şirketleri ve kişileri istihdam edebilirim:

* Hizmetimizi kolaylaştırmak için;
* Hizmeti bizim adımıza sağlamak;
* Hizmetle ilgili hizmetleri gerçekleştirmek; veya
* Hizmetimizin nasıl kullanıldığını analiz etmemize yardımcı olmak.

Bu Hizmetin kullanıcılarını, bu üçüncü tarafların Kişisel Bilgilerinize erişebileceği konusunda bilgilendirmek istiyorum. Nedeni, bizim adımıza kendilerine verilen görevleri yerine getirmektir. Ancak, bilgileri başka bir amaçla ifşa etmemek veya kullanmamakla yükümlüdürler.

**Güvenlik**

Bize Kişisel Bilgilerinizi sağlama konusundaki güveninize değer veriyorum, bu nedenle ticari olarak kabul edilebilir koruma yöntemlerini kullanmaya çalışıyoruz. Ancak, internet üzerinden hiçbir iletim yönteminin veya elektronik depolama yönteminin% 100 güvenli ve güvenilir olmadığını ve mutlak güvenliğini garanti edemediğimi unutmayın.

** Diğer Sitelere Bağlantılar **

Bu Hizmet başka sitelere bağlantılar içerebilir. Bir üçüncü taraf bağlantısına tıklarsanız, o siteye yönlendirileceksiniz. Bu harici sitelerin benim tarafımdan işletilmediğini unutmayın. Bu nedenle, bu web sitelerinin Gizlilik Politikasını gözden geçirmenizi önemle tavsiye ederim. Herhangi bir üçüncü taraf sitenin veya hizmetin içeriği, gizlilik politikaları veya uygulamaları üzerinde hiçbir kontrole sahip değilim ve hiçbir sorumluluk kabul etmiyorum.

** Çocuk Gizliliği **

Bu Hizmetler 13 yaşın altındakilere hitap etmez. 13 yaşın altındaki çocuklardan bilerek kişisel olarak tanımlanabilir bilgi toplamıyorum. 13 yaşından küçük bir çocuğun bana kişisel bilgi verdiğini fark edersem, bunu hemen sunucularımızdan silerim. Ebeveyn veya veli iseniz ve çocuğunuzun bize kişisel bilgiler sağladığını biliyorsanız, gerekli işlemleri yapabilmem için lütfen benimle iletişime geçin.

** Bu Gizlilik Politikasındaki Değişiklikler **

Gizlilik Politikamızı zaman zaman güncelleyebilirim. Bu nedenle, değişiklikler için bu sayfayı periyodik olarak gözden geçirmeniz önerilir. Bu sayfadaki yeni Gizlilik Politikasını yayınlayarak değişiklikleri size bildireceğim. Bu değişiklikler, bu sayfada yayınlandıktan hemen sonra geçerlidir.

**Bize Ulaşın**

Gizlilik Politikam hakkında herhangi bir sorunuz veya öneriniz varsa, cemkirco1@gmail.com adresinden benimle iletişime geçmekten çekinmeyin.

  """ ;



}
