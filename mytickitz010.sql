-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2022 pada 01.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytickitz010`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `id` int(15) NOT NULL,
  `idMovie` bigint(20) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idSch` int(11) NOT NULL,
  `cinema` varchar(100) NOT NULL,
  `numberOfTicket` varchar(300) NOT NULL,
  `totalPayment` varchar(20) NOT NULL,
  `paymentMethod` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `movies`
--

CREATE TABLE `movies` (
  `idMovie` bigint(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `releaseDate` date NOT NULL,
  `director` varchar(150) NOT NULL,
  `synopsis` varchar(1000) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `casts` varchar(400) NOT NULL,
  `categories` varchar(200) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `movies`
--

INSERT INTO `movies` (`idMovie`, `title`, `cover`, `releaseDate`, `director`, `synopsis`, `duration`, `casts`, `categories`, `createdAt`, `updateAt`) VALUES
(1, 'Spider-Man: Into the Spider-Verse', 'https://upload.wikimedia.org/wikipedia/en/f/fa/Spider-Man_Into_the_Spider-Verse_poster.png', '2018-12-01', 'Bob Persichetti, Peter Ramsey, Rodney Rothman.', 'New York City teenager Miles Morales struggles to live up to the expectations of his father, police officer Jefferson Davis, who sees Spider-Man as a menace. Miles adjusts to prep school, and visits his uncle Aaron Davis, who takes him to an abandoned subway station to paint graffiti. Miles is bitten by a radioactive spider and gains spider-like abilities similar to Spider-Man.\r\nReturning to the station, Miles discovers a collider built by Wilson Fisk, who hopes to access parallel universes to bring back his late wife and son, whose deaths he blames on Spider-Man. Miles watches as Spider-Man attempts to disable the collider while fighting Wilson\'s henchmen, Green Goblin and the Prowler. Spider-Man saves Miles, but Green Goblin shoves Spider-Man into the collider, causing an explosion that severely wounds Spider-Man. Spider-Man gives Miles a USB flash drive designed to disable the collider, warning that the machine could destroy the city if reactivated. After watching in horror as Wilso', '1 hour 55 minutes', 'Shameik Moore, Jake Johnson, Hailee Steinfeld, Mahershala Ali, Brian Tyree Henry, Lily Tomlin, Luna Lauren Vélez, John Mulaney, Kimiko Glenn, Nicolas Cage, Liev Schreiber', 'Adventures', '2022-06-26 02:48:59', '2022-06-26 02:48:59'),
(2, 'Spider-Man: Far From Home', 'https://upload.wikimedia.org/wikipedia/id/8/84/SpiderManFarFromHomeTheatrical.jpg', '2019-06-26', 'Jon Watts', 'In Ixtenco, Mexico, Nick Fury and Maria Hill investigate an unnatural storm and encounter the Earth Elemental. Quentin Beck, a super-powered individual, arrives to defeat the creature. Beck subsequently defeats the Elemental and is recruited by Fury and Hill. In New York City, the Midtown School of Science and Technology completes its year, which was restarted to accommodate the students who previously disintegrated five years earlier as a result of Thanos\' actions.[N 1] They had reappeared un-aged, thanks to the actions of the Avengers.[N 2] The school organizes a two-week summer field trip to Europe, where Peter Parker—who is still mourning the death of his mentor Tony Stark—plans to reveal to classmate MJ his attraction to her. Happy Hogan informs Parker that Fury intends to contact him, but Parker ignores Fury\'s phone call.\r\nParker and his classmates travel to Venice, Italy, where the Water Elemental attacks. Parker helps protect his classmates, while Beck arrives and defeats the c', '2 hours 9 minutes', 'Tom Holland, Samuel L. Jackson, Zendaya, Cobie Smulders, Jon Favreau, J. B. Smoove, Jacob Batalon, Martin Starr, Marisa Tomei, Jake Gyllenhaal', 'Action, Sci-fi', '2022-06-26 02:48:59', '2022-06-26 02:48:59'),
(3, 'Spider-Man: No Way Home', 'https://upload.wikimedia.org/wikipedia/en/0/00/Spider-Man_No_Way_Home_poster.jpg', '2021-12-13', 'Jon Watts', 'After Quentin Beck frames Peter Parker for his murder and reveals Parker\'s identity as Spider-Man,[N 1] Parker, his girlfriend MJ Watson, best friend Ned Leeds, and aunt May are interrogated by the Department of Damage Control. Lawyer Matt Murdock gets Parker\'s charges dropped, but the group grapples with negative publicity. After Parker, MJ, and Ned\'s MIT applications are rejected, Parker goes to the New York Sanctum to ask Stephen Strange for help. Strange casts a spell that would make everyone forget Parker is Spider-Man, but it is corrupted when Parker repeatedly requests alterations to let his loved ones retain their memories. Strange contains the spell to stop it and makes Parker leave.\r\nParker tries to convince an MIT administrator to reconsider MJ and Ned\'s applications but is attacked by Otto Octavius. Octavius rips Parker\'s nanotechnology from his Iron Spider suit, which bonds with his mechanical tentacles and allows Parker to disable them. As Norman Osborn arrives and attack', '2 hours 28 minutes', 'Tom Holland, Zendaya, Benedict Cumberbatch, Jacob Batalon, Jon Favreau, Jamie Foxx, Willem Dafoe, Alfred Molina, Benedict Wong, Tony Revolori, Marisa Tomei, Andrew Garfield, Tobey Maguire', 'Action, Adventures', '2022-06-26 03:05:27', '2022-06-26 03:05:27'),
(4, 'Spider-Man: Homecoming', 'https://upload.wikimedia.org/wikipedia/en/f/f9/Spider-Man_Homecoming_poster.jpg', '2017-06-28', 'Jon Watts', 'Following the Battle of New York in 2012,[N 1] Adrian Toomes and his salvage company are contracted to clean up the city, but their operation is taken over by the Department of Damage Control (DODC), a partnership between Tony Stark and the U.S. government. Enraged at being driven out of business, Toomes persuades his employees to keep the Chitauri technology they have already scavenged and use it to create and sell advanced weapons, including a flying Vulture suit Toomes uses to steal Chitauri power cells.\r\nEight years later,[N 2] Peter Parker is drafted into the Avengers by Stark to help with an internal dispute in Berlin,[N 3] but resumes his studies at the Midtown School of Science and Technology when Stark tells him he is not yet ready to become a full Avenger. Parker quits his school\'s academic decathlon team to spend more time focusing on his crime-fighting activities as Spider-Man. His best friend, Ned, eventually discovers his secret identity.\r\nParker comes across Toomes\' asso', '1 hour 53 minutes', 'Tom Holland, Michael Keaton, Jon Favreau, Gwyneth Paltrow, Zendaya, Donald Glover, Jacob Batalon, Laura Harrier, Tony Revolori, Bokeem Woodbine, Tyne Daly, Marisa Tomei, Robert Downey Jr.', 'Action, Adventures', '2022-06-26 03:05:27', '2022-06-26 03:05:27'),
(5, 'John Wick: Chapter 3 – Parabellum', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQly_-uGAefCRyfDwUrvI2wZWncCSLldqaFHw&usqp=CAU', '2019-05-09', 'Chad Stahelski', 'John Wick makes his way through Manhattan before he is labeled \"excommunicado\" for the unauthorized killing of High Table crime lord Santino D\'Antonio on the grounds of the New York Continental Hotel[N 1]—before this, he sends his dog to safety with the concierge, Charon, at the very same hotel. At the New York Public Library, John retrieves a marker medallion and a rosary. He is injured in a fight with another hitman and seeks medical treatment from an underworld doctor, but his $14 million bounty activates before the doctor can finish, forcing John to complete the suturing himself. Upon leaving, he is quickly pursued by various gangs of assassins, all of whom he kills.\r\nJohn meets with the \"Director\", the head of the Ruska Roma crime syndicate, where he presents the rosary and demands safe passage to Casablanca. As John was once one of them, the Director reluctantly helps. Meanwhile, a High Table Adjudicator meets with New York Continental manager Winston and the Bowery King, notifyi', '2 hours 11 minutes', 'Keanu Reeves, Halle Berry, Laurence Fishburne, Mark Dacascos, Asia Kate Dillon, Lance Reddick, Anjelica Huston, Ian McShane', 'Action', '2022-06-26 03:40:05', '2022-06-26 03:40:05'),
(6, 'The Lion King', 'https://jktone.com/wp-content/uploads/2019/11/The-Lion-King.jpg', '2019-07-09', 'Jon Favreau', 'In the Pride Lands of Africa, a pride of lions rule over the animal kingdom from Pride Rock. King Mufasa and Queen Sarabi present their newborn son, Simba, to the gathering animals by Rafiki the mandrill, the kingdom\'s shaman and advisor.\r\nMufasa shows Simba the Pride Lands and explains to him the responsibilities of kingship and the \"circle of life,\" which connects all living things. Mufasa\'s younger brother, Scar, covets the throne and plots to get rid of Mufasa and Simba, so he may become king. He tricks Simba and his best friend Nala into exploring a forbidden elephants\' graveyard, where they are chased by a clan of hyenas led by the ruthless Shenzi. Mufasa hears about the incident from his majordomo, the hornbill Zazu, and rescues the cubs. Though upset with Simba, Mufasa forgives him and explains that the great kings of the past watch over them from the night sky, from which he will one day watch over Simba. Meanwhile, Scar visits the hyenas and convinces them to help him overthr', '1 hour 58 minutes', 'Donald Glover, Seth Rogen, Chiwetel Ejiofor, Alfre Woodard, Billy Eichner, John Kani, John Oliver, Beyoncé Knowles-Carter, James Earl Jones', 'Adventures', '2022-06-26 03:40:05', '2022-06-26 03:40:05'),
(7, 'Black Widow', 'https://upload.wikimedia.org/wikipedia/en/2/2b/Black_Widow_soundtrack_cover.jpg', '2021-06-29', 'Cate Shortland', 'In 1995, super soldier Alexei Shostakov and Black Widow Melina Vostokoff work as Russian undercover agents, posing as a family in Ohio with Natasha Romanoff and Yelena Belova as their daughters. They steal S.H.I.E.L.D. intel and escape to Cuba where their boss, General Dreykov, has Romanoff and Belova taken to the Red Room for training. In the following decades, Shostakov is imprisoned in Russia while Romanoff and Belova become successful, dangerous assassins. Romanoff eventually defects to S.H.I.E.L.D. after helping Clint Barton bomb Dreykov\'s Budapest office, which apparently kills Dreykov and his young daughter Antonia.\r\nIn 2016, Romanoff is a fugitive for violating the Sokovia Accords.[b] She escapes from U.S. Secretary of State Thaddeus Ross and flees to a safehouse in Norway supplied by Rick Mason. Meanwhile, Belova kills a rogue former Black Widow but comes in contact with a synthetic gas that neutralizes the Red Room\'s chemical mind-control agent. Belova sends antidote vials to', '2 hours 14 minutes', 'Scarlett Johansson, Florence Pugh, David Harbour, O-T Fagbenle, Olga Kurylenko, William Hurt, Ray Winstone, Rachel Weisz', 'Action, Adventure, Sci-Fi', '2022-06-26 04:20:02', '2022-06-26 04:20:02'),
(8, 'The Witches', 'https://upload.wikimedia.org/wikipedia/en/a/a7/The_Witches_%28Official_2020_Film_Poster%29.png', '2020-10-22', 'Robert Zemeckis', 'In 1968, a young boy named Charlie Hansen goes to live with his grandmother, Agatha in Demopolis, Alabama after a car accident kills his parents in Chicago. Gradually, Charlie is cheered up by Agatha who buys him a pet mouse whom he names Daisy. One day, Charlie goes to a store to buy a box of nails to train Daisy and to build a house for her as well. The boy is approached by a witch trying to lure him with a snake and a caramel, but Agatha calls him, and the witch disappears.\r\nAfter telling Agatha about the encounter, Charlie learns that the witches are in fact real. She says a witch cursed her childhood friend Alice into spending the rest of her life as a chicken. Agatha says that witches never leave once they find a child. Frantically, they decide to stay in a nearby hotel where her cousin Eston is the executive chef. While there, Agatha teaches Charlie how to tell a witch from an ordinary woman: real witches have claws instead of fingernails, which they hide by wearing gloves; are ', '1 hour 44 minutes', 'Anne Hathaway, Octavia Spencer, Stanley Tucci', 'Adventure, Comedy, Family', '2022-06-26 04:20:02', '2022-06-26 04:20:02'),
(9, 'Tenet', 'https://static.wikia.nocookie.net/filmguide/images/5/57/Tenet_%282020%29_poster.jpg/revision/latest?cb=20200703233413', '2020-08-26', 'Christopher Nolan', 'A CIA operative, the Protagonist, participates in an extraction at the Kyiv Opera House. His team retrieves an artifact but he is captured, tortured by mercenaries, and ultimately consumes a suicide pill. Some time later, the Protagonist awakens to learn the artifact was lost and the pill was a fake, designed as a test. An organization called Tenet recruits him and briefs him on bullets with \"inverted\" entropy, meaning they move backward through time. After meeting his handler, Neil, they trace the inverted bullets to arms dealer Priya Singh in Mumbai. The pair discovers that Priya is a member of Tenet, and that her cartridges were purchased and inverted by Russian oligarch Andrei Sator. The Protagonist approaches Sator\'s estranged wife, Kat, an art appraiser who authenticated a forged Goya drawing that Sator purchased from an acquaintance of hers. Sator discovered Kat\'s mistake and is using it to blackmail her. In exchange for Kat\'s help, the Protagonist and Neil agree to steal the dr', '2 hours 30 minutes', 'John David Washington, Robert Pattinson, Elizabeth Debicki, Dimple Kapadia, Michael Caine, Kenneth Branagh', 'Action, Sci-Fi', '2022-06-26 04:25:43', '2022-06-26 04:25:43'),
(10, 'Frozen', 'maleficent.jpg', '2018-12-12', 'Robert Stromberg', 'Maleficent is a powerful fairy living in the Moors, a magical forest realm bordering a human kingdom. As a young girl, Maleficent meets and falls in love with a human peasant boy named Stefan. On Maleficents 16th birthday, he gives her what he calls a true loves kiss. However, as they grow older, the two grow apart Stefans love is overshadowed by his ambition to be king, and Maleficent becomes protector of the Moors.', '1 hour 37 minutes', 'Angelina Jolie, Elle Fanning', 'Fantasy, Adventure', '2022-06-26 13:33:11', '2022-06-26 13:43:26'),
(12, 'Maleficent', 'maleficent.jpg', '2014-05-28', 'Robert Stromberg', 'Maleficent is a powerful fairy living in the Moors, a magical forest realm bordering a human kingdom. As a young girl, Maleficent meets and falls in love with a human peasant boy named Stefan. On Maleficents 16th birthday, he gives her what he calls a true loves kiss. However, as they grow older, the two grow apart Stefans love is overshadowed by his ambition to be king, and Maleficent becomes protector of the Moors.', '1 hour 37 minutes', 'Angelina Jolie, Elle Fanning', 'Fantasy, Adventure', '2022-06-26 14:36:58', '2022-06-26 14:36:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule`
--

CREATE TABLE `schedule` (
  `idSch` bigint(20) NOT NULL,
  `dateTime` datetime NOT NULL,
  `place` varchar(100) NOT NULL,
  `cinema` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `showtime` varchar(300) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `schedule`
--

INSERT INTO `schedule` (`idSch`, `dateTime`, `place`, `cinema`, `logo`, `showtime`, `price`) VALUES
(1, '0000-00-00 00:00:00', 'Solo', 'undefined', 'undefined', 'undefined', '35000'),
(2, '2022-06-26 21:35:28', 'Yogyakarta', 'Cinema XXI', 'cinemaxxi.png', '13.50', '50000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` bigint(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `fullName` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `username`, `firstName`, `lastName`, `fullName`, `email`, `phone`) VALUES
(1, '@santilala', 'Santi', 'Purwaningsih', 'Santi Purwaningsih', 'santipn@gmail.com', '089665034214'),
(2, '@rizkiaul', 'Rizki', 'Aulia Febriani', 'Rizki Aulia Febriani', 'rizkiaul@gmail.com', '089679322309'),
(3, '@sandira', 'Sandi', 'Riski Akbar', 'Sandi Riski Akbar', 'sandira@gmail.com', '082233411151'),
(4, '@agengna', 'Ageng', 'Nugroho Adi', 'Ageng Nugroho Adi', 'agengna@gmail.com', '082153740440'),
(5, '@lanisya', 'Lani', 'Suryaman', 'Lani Suryaman', 'lanisya@gmail.com', '089634803159'),
(6, '@rossafe', 'Rossa', 'Ferdi Mudin', 'Rossa Ferdi Mudin', 'rossafe@gmail.com', '085398891898');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`idMovie`);

--
-- Indeks untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`idSch`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `idMovie` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `schedule`
--
ALTER TABLE `schedule`
  MODIFY `idSch` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idUser` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
