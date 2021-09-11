-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2021 at 10:45 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17365101_medquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnostics`
--

CREATE TABLE `diagnostics` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diagnostics`
--

INSERT INTO `diagnostics` (`id`, `title`, `description`, `imageUrl`) VALUES
(1, 'Neural Pathway Pain — A Call for More Accurate Diagnoses', 'The most widely accepted behavioral intervention model to treat chronic pain relies on the perspective that all pain is the same. If pain is pain, treatments may be designed to reduce the pain, or to help patients cope with the pain. This practice seems to blur the line between the two major causes of chronic pain:\r\n\r\ninflammatory pain due to ongoing physical injury, tumor, fracture (ie, nociceptive pain), or due to nerve damage (ie, neuropathic pain)\r\nbrain-induced pain (ie, neural pathway, centralized, psychophysiologic, or psychosomatic pain).\r\nWhen physicians fail to make this distinction, they may be viewing chronic pain as a static, non-reversible process, for which the etiology does not matter.\r\n\r\nStructural Distinctions\r\nThis lack of distinction may have significant consequences. The most common reason that patients visit physicians is due to neck or back pain,1-2 and the causes are almost always attributed to some kind of physical injury or degeneration.\r\n\r\nFor example, physicians typically rely on MRI scans to indicate the cause of the neck or back pain. When MRIs reveal fractures, tumors, inflammatory conditions, or severely herniated discs with evidence of nerve damage, a structural disorder is highly likely. Yet, MRIs of pain-free 30-year-olds show degenerative disc disease in 50% of patients, and bulging discs in 40% of patients.3 Those statistics reach levels of 80% and 60%, respectively, in pain-free 50-year-olds, and are even higher in older patients.3 The vast majority of adults, therefore, have abnormal MRIs, suggesting that these abnormalities do not necessarily cause pain. Despite this, many clinicians continue to point to minor structural findings as the cause of chronic neck or back pain.\r\n\r\nTreatments for neck or back pain commonly include surgery, injections, and/or opioid medications. However, there are no studies demonstrating that surgery for axial back pain is superior to nonsurgical interventions.4 Meta-analyses of injection therapies show no clear benefit over placebo injections.5 Widespread opioid use for pain has been termed a national epidemic. Moreover, suggesting to a patient that the back may be irreversibly damaged may generate increased fear and anticipation of pain, thereby activating increased actual pain and disability.\r\n\r\nAnother misconception about chronic pain is that brain-generated pain is rare. Studies show that approximately 85% of patients with chronic neck or back pain do not have a clearly identifiable, structural cause for their pain.6 Of the millions of individuals experiencing tension and migraine headaches, only about 5% have an identifiable structural cause. Very few people with irritable bowel syndrome, fibromyalgia, and many chronic pelvic pain syndromes have tissue damage to account for their pain.7 These data suggest that the majority of patients presenting with chronic pain do not necessarily have a structural cause.\r\n\r\nBrain Distinctions\r\nAs pain management evolves, practitioners are turning to mechanisms in the brain to explain chronic pain.8 Imaging from MRI and functional MRI studies (fMRI) identify clear changes in the brains of individuals with chronic pain.9-10 However, brain-generated pain is often conceived to be static and irreversible.\r\n\r\nThis conceptualization does not account for the dynamic nature of brain-generated pain. Emerging research on brain function may explain how our brains generate internal experiences, including pain.11 There is a danger/alarm mechanism that elicits pain when danger is sensed, either in the form of physical injury or emotional threat. The parts of the brain activated by emotionally upsetting events are identical to those activated by physical injury, thus demonstrating the mechanism by which emotional pain may lead to physical pain.12\r\n\r\nWe now know that children who suffer from the consequences of parental divorce, drug abuse, neglect, or outright abuse have much higher rates of chronic pain (and other difficulties) later in life.13 The experience of growing up feeling unsafe sensitizes the danger/alarm mechanism that may then be triggered later in life through stressful life events or physical injuries, such as a car accident or a surgical procedure. In these situations, the brain may construct pain as a protective mechanism. Specifically, the brain activates neural circuits or pathways of pain that create real pain in the absence of tissue damage. These pathways are, however, reversible due to the brain’s neuroplasticity.\r\n\r\nIdentifying Neural Pathway Pain in the Clinical Setting\r\nPhysicians may apply this evolving understanding of pain in their clinical practice by identifying patients who have brain-generated or neural pathway pain. After ruling out significant structural disorders, physicians may use clinical evidence to rule in neural pathway pain. Following are some guidelines that may help to link a patients symptoms to neural pathways:\r\n\r\nHistory of several neural pathway-induced syndromes over a lifetime, suc', 'diag.png'),
(3, 'L\'infection COVID-19', 'Les tests PCR, ou tests de dépistage virologique, sont utilisés pour le diagnostic de l’infection COVID-19. Ils identifient la présence de gènes propres au SARS-CoV-2. Ils sont spécifiques et très fiables, si le prélèvement est bien réalisé. Les tests dits sérologiques sont, eux, destinés à identifier les personnes ayant développé une immunité contre le SARS-CoV-2.\r\n\r\nEN QUOI CONSISTE LE TEST DE DÉPISTAGE VIROLOGIQUE ?\r\nActuellement, le dépistage de l\'infection par le coronavirus repose sur la réalisation d’un test PCR (réaction en chaîne par polymérase), qui met en évidence ou non de l\'ARN (acide ribonucléique) du virus dans un prélèvement nasopharyngé à l’aide d’un écouvillon inséré profondément dans les fosses nasales. Ce test permet de préciser à un instant T si la personne est porteuse ou non de gènes du virus dans cette partie du corps.\r\n\r\nLe test PCR est fiable mais nécessite que le prélèvement soit réalisé correctement, c\'est-à-dire qu’il doit être fait assez profondément dans le nez. La charge virale (quantité de virus dans un prélèvement donné) varie dans le temps. Les tests PCR peuvent donner des faux négatifs quand la quantité de virus est trop faible pour être détectée, par exemple en tout début d\'infection ou après 8 à 10 jours d\'évolution car le virus n\'est plus alors présent dans le nez.\r\n\r\nChez certaines personnes qui ne présentent plus de symptômes, le test peut être négatif sur des prélèvements de fond de fosse nasale, mais rester positifs dans les sécrétions des bronches pendant quelques jours à quelques semaines. On ignore si ces personnes sont encore contagieuses.\r\n\r\nD’autres tests virologiques, dits “antigéniques”, sont désormais disponibles. Ils sont également réalisés à partir d\'un prélèvement dans le nez. Ils recherchent certaines protéines du coronavirus. Ces tests sont moins sensibles que les tests PCR mais sont plus rapides à mettre en œuvre.\r\n\r\nQUE PENSER DES TESTS SÉROLOGIQUES ?\r\nLes tests sérologiques sont réalisés à partir d’un prélèvement sanguin. Ils recherchent des anticorps (protéines de l’immunité) témoins d’une infection passée. Ils ne sont donc pas adaptés au diagnostic de la COVID-19.\r\n\r\nCertains de ces tests sont rapides et ne nécessitent que deux gouttes de sang (tests TROD). De nombreuses pharmacies proposent ce type de test. Attention, ces tests sont efficaces pour dépister les personnes qui n’ont PAS été en contact avec le coronavirus (test négatif). Par contre, un test positif doit systématiquement être confirmé par une prise de sang classique.', 'coronavirus.jpg'),
(4, 'du dépistage au diagnostic, au plus tôt!', 'Lorsqu’un cancer est suspecté, suite à un examen clinique par le médecin ou à un dépistage, différents examens sont réalisés pour établir un diagnostic. Les examens pratiqués dépendent de la localisation de la masse tumorale.\r\n\r\nLe diagnostic repose sur une collaboration interdisciplinaire. Il permet de trouver la localisation de la tumeur initiale (primitive) et de mesurer son extension (stade), d’identifier le plus précisément possible le type de cancer et ses particularités génétiques, d’établir si la tumeur peut être enlevée de manière chirurgicale. La stratégie thérapeutique est établie sur l’ensemble de ces résultats. En allant aujourd’hui au plus près des caractéristiques de latumeur, le diagnostic permet de s’acheminer vers des traitements personnalisés.\r\n\r\nNe pas ignorer les signes d’alerte\r\nAvant tout, il faut consulter devant tout phénomène inhabituel qui persiste : toux, douleurs, grosseur, tache sur la peau, problèmes digestifs, urinaires, plaie, saignements, perte de poids inexpliquée, etc. Le premier examen, clinique, est fait par le médecin.\r\n\r\nLes biomarqueurs sanguins\r\nUne prise de sang permet d’évaluer l’état de santé général et le fonctionnement des principaux organes. La présence de marqueurs sanguins particuliers peut être recherchée. Il s’agit en général de protéines produites de manière anormalement élevéepar les cellules cancéreuses. Leur présence est simplement un indice pour le diagnostic, car elle peut également signer des pathologies non malignes.\r\n\r\nExemples :\r\n\r\nPSA (antigène spécifique de prostate) dans le cas du cancer de la prostate ;\r\nACE (antigène carcino-embryonnaire) principalement pour le cancer du côlon et aussi pour d’autres cancers (sein, poumon, pancréas…)\r\nCA125 pour le cancer des ovaires, du col de l’utérus, des poumons…\r\nL’imagerie médicale\r\nLe premier diagnostic est souvent posé via l’imagerie. Des progrès considérables ont été faits au cours des dernières années en la matière. De nombreuses techniques coexistent ; chacune a ses indications, ses spécificités et ses limites.\r\n\r\nRadiographie : basée sur les rayons X, elle est surtout utilisée en première approche pour détecter les cancers du poumon et du sein (mammographie).\r\nScanner (aussi appelé tomodensitométrie, ou TDM) : type de radiographie qui, en prenant une succession d’images, permet une reconstitution en 3D des organes.\r\nEndoscopie (ou fibroscopie) : examen consistant à introduire une caméra à l’intérieur d’un organe. Selon l’organe, il peut s’agir d’une coloscopie (côlon), d’une gastroscopie (estomac), d’une cystoscopie (vessie), …\r\nImagerie par résonance magnétique (IRM) : technique avancée basée sur l’utilisation d’un champ magnétique qui fournit des images très précises des tissus mous.\r\nTomographie par émission de positons (TEP ou PET-Scan) : technique sophistiquée permettant de rechercher à l’aide d’un traceur faiblement radioactif les cellules se multipliant rapidement, caractéristique des tumeurs et des métastases. La substance radioactive, un dérivé du sucre, est absorbé par les cellules cancéreuses et détecté par une caméra spéciale.\r\nScintigraphie : elle reflète le fonctionnement d’un organe. Elle est basée surl’injection d’un traceur faiblement radioactif qui se fixe de manière spécifique sur l’organe à étudier,en plus ou moins grosse quantité selon sa structure et son activité. La répartition du traceur, représentée par l’accumulation de points scintillants, est examinée grâce à une caméra et à un traitement informatique des images. Cette répartiition est homogène pour un organe sain.\r\nTomoscintigraphie : la capture de plusieurs images grâce à une caméra mobile permet de reconstituer une image en 3D de l’organe étudié.\r\nLa biopsie\r\nElle consiste à prélever un échantillon de tissu dans la région suspecte pour l’examiner au microscope (examen anatomopathologique) en vue de confirmer la nature cancéreuse de la lésion et d’en déterminer les caractéristiques et le stade. Elle est aussi utilisée pour identifier les altérations génétiques présentes dans la tumeur (voir ci-dessous).\r\nL’analyse génétique et moléculaire des tumeurs\r\nUne tumeur est constituée de cellules présentant de nombreuses anomalies génétiques. Il est aujourd’hui possible d’en répertorier certaines grâce à l’analyse du génome (l’ensemble des gènes) de la tumeur. Avec une dizaine d’anomalies génétiques, appelées marqueurs, il est aujourd’hui possible de stratifier un type de cancer (du sein par exemple) en plusieurs sous-types qui partagent les mêmes anomalies, donc des mécanismes de développement similaires.\r\n\r\nObjectifs :\r\n\r\nProposer une thérapie ciblée pour contrer ces mécanismes, si elle existe.\r\nPrédire l’apparition de résistances au traitement et éviter des traitements inutiles.\r\nÉvaluer le risque d’apparition de métastases.\r\nL’oncogénétique\r\nCette discipline récente s’intéresse aux cancers qui surviennent dans un contexte de prédisposition génétique (5 % des cas). En effet, certaines mutations génétiques, augmentant fortement le risque de développer certains cancers, sont transmises de génération en génération. Dans une même famille, plusieurs personnes vont alors développer le même cancer. Grâce à des tests génétiques, l’oncogénétique vise à identifier les malades et ses apparentés porteurs d’une telle mutation pour leur proposer un suivi adapté. En France une centaine de consultations sont proposées via le dispositif national d’oncogénétique.\r\n\r\nIl est à noter que les techniques de diagnostic indiquées (en particulier le dosage de biomarqueurs, l’imagerie médicale, l’analyse génétique et moléculaire) sont aussi utilisées pour le suivi de la réponse aux traitements et après rémission.', 'cancers.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `semester` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `image_mod` varchar(255) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module`, `semester`, `annee`, `image_mod`, `view`) VALUES
(2, 'anatomie', 1, 1, 'anatomie.jpeg', 2),
(4, 'biophysique', 2, 2, 'biophysique.jpeg', 18),
(5, 'physiologie', 1, 2, 'physiologie.jpeg', 0),
(6, 'biochimie', 1, 1, 'biochimie.jpeg', 5),
(7, 'biostatistique', 1, 1, 'biostatistique.jpeg', 0),
(8, 'chimie general', 1, 1, 'chimie_general.jpeg', 3),
(9, 'chimie organique', 1, 1, 'chimie_organique.jpeg', 5),
(10, 'ssh', 1, 1, 'ssh.jpeg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id_qcm` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `annee` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `qcm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resp1` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `answer2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resp2` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `answer3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resp3` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `answer4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resp4` enum('true','false') COLLATE utf8_unicode_ci NOT NULL,
  `answer5` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'null',
  `resp5` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false',
  `explication` varchar(4000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id_qcm`, `module`, `annee`, `semester`, `qcm`, `answer1`, `resp1`, `answer2`, `resp2`, `answer3`, `resp3`, `answer4`, `resp4`, `answer5`, `resp5`, `explication`) VALUES
(1, 'anatomie', 2, 2, 'ieuhgfeuzihg', 'iuehgieuhg', 'false', 'iuehgieuhg', 'true', 'iuehgieuhg', 'true', 'iuehgieuhg', 'false', 'null', 'false', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum'),
(2, 'biostatistique', 2, 2, 'sqiuqhzug ouzeoez', 'iuezhgriugiu jdjdjfj fkdkdfj dkdkdkfk ekekdkfkfj dkdkdkfgj ekekfkf', 'true', 'iuezhgriugiu jdjdjfjfj dkdkfkgkfj skdfjdueue jdjdjd zjdjj', 'false', 'iuezhgriugiu dbdnjf dndnffnfn djdj', 'true', 'iuezhgriugiu dbdnjf dndnffnfn djdj', 'false', 'iuezhgriugiujdjd djdjdjfj sjdjfjf', 'true', 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum'),
(3, 'SSH', 2, 2, 'je sais pas si tu sais alors que moi je sais que tu sais que tu sais pas', 'je sais ', 'true', 'tu sais', 'false', 'je sais que tu sais', 'true', 'je sais que tu sais', 'false', 'null', 'false', 'djfgshg huihgiu heguh geziu hgeuih iuhegiu hiuehfiu hgeiauh our hg iuehiu'),
(4, 'biophysique', 1, 2, 'salut comment vas tu ?', 'je vais bien', 'false', 'hamdoallah', 'false', 'je veux de largent', 'false', 'je veux de largent', 'true', 'je veux etre milliardaire', 'true', 'doishgriuhgruizh iuhezgiuiughziu hg zeiuhgiuh zeiughgiuezhg iudhgiue uhegguihgeiuph iuuihfiuz giuiughu ihgeuiehui hegiuhegziugh'),
(6, 'ssh', 1, 2, 'euoihf ohroighr ezihgoieh  oeizhgio eihgoi  hegiozhg lhegiozeh elkzjhgio heklghiroh ekhzgio', 'dsoijgoirj ieghzioeh eiogjhgeizoh igzehoi', 'false', 'roijhti tjhitj erkjhiejr', 'true', 'toyhoi jreijyh iojfhk jirej rijhihroej rijhiroj rkjhiroej lkrjhihorjrioj ', 'false', 'trhij iojrfjhitej jthijtio rhejieorj lekjhrhitej iorekjhriejhi lkhjrirej lrkejhirej ijrelhkjhrioejh', 'true', 'null', 'false', 'erziugh iurhg oih egzijhoir h ehglhzoi hlkehgioh lekhgioezh kelhgioehglk hgeohz khezg lkehag ioeh elkzhgioehg lkehgioeh lkhezioghioeh keahg ieoh ioelkghoieh hoiehoigh oiahg elkheoi');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `id_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `annee` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `incorrect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnostics`
--
ALTER TABLE `diagnostics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_qcm`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnostics`
--
ALTER TABLE `diagnostics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_qcm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
