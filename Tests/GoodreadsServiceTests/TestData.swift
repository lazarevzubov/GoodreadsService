//
//  TestData.swift
//  GoodreadsService
//
//  Created by Nikita Lazarev-Zubov on 14.5.2020.
//

import Foundation
@testable
import GoodreadsService

enum TestData {

    enum BookInfo {

        // MARK: - Properties

        static let noPhotoXML = """
        <?xml version="1.0" encoding="UTF-8"?>
        <GoodreadsResponse>
        <Request>
        <authentication>true</authentication>
        <key>
            <![CDATA[JQfiS9k0doIho3vm13Qxdg]]>
        </key>
        <method>
            <![CDATA[book_show]]>
        </method>
        </Request>
        <book>
        <id>999999</id>
        <title>Roommates</title>
        <isbn>
            <![CDATA[0380713578]]>
        </isbn>
        <isbn13>
            <![CDATA[9780380713578]]>
        </isbn13>
        <asin>
            <![CDATA[]]>
        </asin>
        <kindle_asin>
            <![CDATA[]]>
        </kindle_asin>
        <marketplace_id>
            <![CDATA[]]>
        </marketplace_id>
        <country_code>
            <![CDATA[FI]]>
        </country_code>
        <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
        <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
        <publication_year>1991</publication_year>
        <publication_month>11</publication_month>
        <publication_day>1</publication_day>
        <publisher>Avon Books</publisher>
        <language_code></language_code>
        <is_ebook>false</is_ebook>
        <description></description>
        <work>
            <id type="integer">3633505</id>
            <books_count type="integer">2</books_count>
            <best_book_id type="integer">3591235</best_book_id>
            <reviews_count type="integer">140</reviews_count>
            <ratings_sum type="integer">194</ratings_sum>
            <ratings_count type="integer">44</ratings_count>
            <text_reviews_count type="integer">3</text_reviews_count>
            <original_publication_year type="integer">1990</original_publication_year>
            <original_publication_month type="integer">4</original_publication_month>
            <original_publication_day type="integer">30</original_publication_day>
            <original_title>Roommates</original_title>
            <original_language_id type="integer" nil="true"/>
            <media_type nil="true"/>
            <rating_dist>5:27|4:12|3:3|2:0|1:2|total:44</rating_dist>
            <desc_user_id type="integer">-110</desc_user_id>
            <default_chaptering_book_id type="integer" nil="true"/>
            <default_description_language_code nil="true"/>
            <work_uri>kca://work/amzn1.gr.work.v1.I3TKF-qqAQDe7F8cNRAYRg</work_uri>
        </work>
        <average_rating>4.41</average_rating>
        <num_pages>
            <![CDATA[]]>
        </num_pages>
        <format>
            <![CDATA[Paperback]]>
        </format>
        <edition_information>
            <![CDATA[]]>
        </edition_information>
        <ratings_count>
            <![CDATA[42]]>
        </ratings_count>
        <text_reviews_count>
            <![CDATA[3]]>
        </text_reviews_count>
        <url>
            <![CDATA[https://www.goodreads.com/book/show/999999.Roommates]]>
        </url>
        <link>
            <![CDATA[https://www.goodreads.com/book/show/999999.Roommates]]>
        </link>
        <authors>
            <author>
                <id>502594</id>
                <name>Kathryn O. Galbraith</name>
                <role></role>
                <image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1307134284p5/502594.jpg]]>
                </image_url>
                <small_image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1307134284p2/502594.jpg]]>
                </small_image_url>
                <link>
                    <![CDATA[https://www.goodreads.com/author/show/502594.Kathryn_O_Galbraith]]>
                </link>
                <average_rating>3.58</average_rating>
                <ratings_count>1239</ratings_count>
                <text_reviews_count>254</text_reviews_count>
            </author>
        </authors>
        <reviews_widget>
            <![CDATA[
                <style>
          #goodreads-widget {
            font-family: georgia, serif;
            padding: 18px 0;
            width:565px;
          }
          #goodreads-widget h1 {
            font-weight:normal;
            font-size: 16px;
            border-bottom: 1px solid #BBB596;
            margin-bottom: 0;
          }
          #goodreads-widget a {
            text-decoration: none;
            color:#660;
          }
          iframe{
            background-color: #fff;
          }
          #goodreads-widget a:hover { text-decoration: underline; }
          #goodreads-widget a:active {
            color:#660;
          }
          #gr_footer {
            width: 100%;
            border-top: 1px solid #BBB596;
            text-align: right;
          }
          #goodreads-widget .gr_branding{
            color: #382110;
            font-size: 11px;
            text-decoration: none;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
          }
        </style><div id="goodreads-widget"><div id="gr_header"><h1><a rel="nofollow" href="https://www.goodreads.com/book/show/999999.Roommates">Roommates Reviews</a></h1></div><iframe id="the_iframe" src="https://www.goodreads.com/api/reviews_widget_iframe?did=DEVELOPER_ID&amp;format=html&amp;isbn=0380713578&amp;links=660&amp;min_rating=&amp;review_back=fff&amp;stars=000&amp;text=000" width="565" height="400" frameborder="0"></iframe><div id="gr_footer"><a class="gr_branding" target="_blank" rel="nofollow noopener noreferrer" href="https://www.goodreads.com/book/show/999999.Roommates?utm_medium=api&amp;utm_source=reviews_widget">Reviews from Goodreads.com</a></div></div>

              ]]>
        </reviews_widget>
        <popular_shelves>
            <shelf name="to-read" count="70"/>
            <shelf name="fiction" count="2"/>
            <shelf name="read-years-ago" count="1"/>
            <shelf name="to-read-fantasy" count="1"/>
            <shelf name="science-fiction-fantasy" count="1"/>
            <shelf name="saw-as-movie" count="1"/>
            <shelf name="epic-fantasy" count="1"/>
            <shelf name="classics" count="1"/>
            <shelf name="favorites" count="1"/>
            <shelf name="fantasy" count="1"/>
            <shelf name="read-to-kids" count="1"/>
            <shelf name="kiddos" count="1"/>
            <shelf name="book-lust" count="1"/>
            <shelf name="currently-reading" count="1"/>
            <shelf name="book-crush" count="1"/>
            <shelf name="best-books-for-kids-5-11" count="1"/>
            <shelf name="特價精裝小說區" count="1"/>
        </popular_shelves>
        <book_links>
            <book_link>
                <id>8</id>
                <name>Libraries</name>
                <link>https://www.goodreads.com/book_link/follow/8</link>
            </book_link>
        </book_links>
        <buy_links>
            <buy_link>
                <id>1</id>
                <name>Amazon</name>
                <link>https://www.goodreads.com/book_link/follow/1</link>
            </buy_link>
            <buy_link>
                <id>10</id>
                <name>Audible</name>
                <link>https://www.goodreads.com/book_link/follow/10</link>
            </buy_link>
            <buy_link>
                <id>3</id>
                <name>Barnes &amp; Noble</name>
                <link>https://www.goodreads.com/book_link/follow/3</link>
            </buy_link>
            <buy_link>
                <id>1027</id>
                <name>Walmart eBooks</name>
                <link>https://www.goodreads.com/book_link/follow/1027</link>
            </buy_link>
            <buy_link>
                <id>2102</id>
                <name>Apple Books</name>
                <link>https://www.goodreads.com/book_link/follow/2102</link>
            </buy_link>
            <buy_link>
                <id>8036</id>
                <name>Google Play</name>
                <link>https://www.goodreads.com/book_link/follow/8036</link>
            </buy_link>
            <buy_link>
                <id>4</id>
                <name>Abebooks</name>
                <link>https://www.goodreads.com/book_link/follow/4</link>
            </buy_link>
            <buy_link>
                <id>882</id>
                <name>Book Depository</name>
                <link>https://www.goodreads.com/book_link/follow/882</link>
            </buy_link>
            <buy_link>
                <id>5</id>
                <name>Alibris</name>
                <link>https://www.goodreads.com/book_link/follow/5</link>
            </buy_link>
            <buy_link>
                <id>9</id>
                <name>Indigo</name>
                <link>https://www.goodreads.com/book_link/follow/9</link>
            </buy_link>
            <buy_link>
                <id>107</id>
                <name>Better World Books</name>
                <link>https://www.goodreads.com/book_link/follow/107</link>
            </buy_link>
            <buy_link>
                <id>7</id>
                <name>IndieBound</name>
                <link>https://www.goodreads.com/book_link/follow/7</link>
            </buy_link>
            <buy_link>
                <id>17439</id>
                <name>Amazon AU</name>
                <link>https://www.goodreads.com/book_link/follow/17439</link>
            </buy_link>
        </buy_links>
        <series_works></series_works>
        </book>
        </GoodreadsResponse>
        """.data(using: .utf8)!
        static let regularXML = """
        <?xml version="1.0" encoding="UTF-8"?>
        <GoodreadsResponse>
        <Request>
        <authentication>true</authentication>
        <key>
            <![CDATA[JQfiS9k0doIho3vm13Qxdg]]>
        </key>
        <method>
            <![CDATA[book_show]]>
        </method>
        </Request>
        <book>
        <id>375802</id>
        <title>
            <![CDATA[Ender’s Game (Ender’s Saga, #1)]]>
        </title>
        <isbn>
            <![CDATA[0812550706]]>
        </isbn>
        <isbn13>
            <![CDATA[9780812550702]]>
        </isbn13>
        <asin>
            <![CDATA[]]>
        </asin>
        <kindle_asin>
            <![CDATA[]]>
        </kindle_asin>
        <marketplace_id>
            <![CDATA[]]>
        </marketplace_id>
        <country_code>
            <![CDATA[FI]]>
        </country_code>
        <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1408303130l/375802._SY160_.jpg</image_url>
        <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1408303130l/375802._SY75_.jpg</small_image_url>
        <publication_year>2004</publication_year>
        <publication_month>9</publication_month>
        <publication_day>30</publication_day>
        <publisher>Macmillan Audio</publisher>
        <language_code>eng</language_code>
        <is_ebook>false</is_ebook>
        <description>
            <![CDATA[Andrew "Ender" Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. The result of genetic experimentation, Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast.<br /><br />But Ender is not the only result of the experiment. The war with the Buggers has been raging for a hundred years, and the quest for the perfect general has been underway almost as long. Ender's two older siblings, Peter and Valentine, are every bit as unusual as he is, but in very different ways. While Peter was too uncontrollably violent, Valentine very nearly lacks the capability for violence altogether. Neither was found suitable for the military's purpose. But they are driven by their jealousy of Ender, and by their inbred drive for power. Peter seeks to control the political process, to become a ruler. Valentine's abilities turn more toward the subtle control of the beliefs of commoner and elite alike, through powerfully convincing essays. Hiding their youth and identities behind the anonymity of the computer networks, these two begin working together to shape the destiny of Earth-an Earth that has no future at all if their brother Ender fails.<br /><br />Source: hatrack.com]]>
        </description>
        <work>
            <id type="integer">2422333</id>
            <books_count type="integer">254</books_count>
            <best_book_id type="integer">375802</best_book_id>
            <reviews_count type="integer">1599093</reviews_count>
            <ratings_sum type="integer">4676304</ratings_sum>
            <ratings_count type="integer">1086849</ratings_count>
            <text_reviews_count type="integer">42550</text_reviews_count>
            <original_publication_year type="integer">1985</original_publication_year>
            <original_publication_month type="integer" nil="true"/>
            <original_publication_day type="integer" nil="true"/>
            <original_title>Ender's Game</original_title>
            <original_language_id type="integer" nil="true"/>
            <media_type>book</media_type>
            <rating_dist>5:580321|4:326840|3:126899|2:33853|1:18936|total:1086849</rating_dist>
            <desc_user_id type="integer">55823186</desc_user_id>
            <default_chaptering_book_id type="integer">820750</default_chaptering_book_id>
            <default_description_language_code nil="true"/>
            <work_uri>kca://work/amzn1.gr.work.v1.VGZlxSHM4ngy3MUPG3VaQg</work_uri>
        </work>
        <average_rating>4.30</average_rating>
        <num_pages>
            <![CDATA[324]]>
        </num_pages>
        <format>
            <![CDATA[Audiobook]]>
        </format>
        <edition_information>
            <![CDATA[Unabridged]]>
        </edition_information>
        <ratings_count>
            <![CDATA[1008143]]>
        </ratings_count>
        <text_reviews_count>
            <![CDATA[36755]]>
        </text_reviews_count>
        <url>
            <![CDATA[https://www.goodreads.com/book/show/375802.Ender_s_Game]]>
        </url>
        <link>
            <![CDATA[https://www.goodreads.com/book/show/375802.Ender_s_Game]]>
        </link>
        <authors>
            <author>
                <id>589</id>
                <name>Orson Scott Card</name>
                <role></role>
                <image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1294099952p5/589.jpg]]>
                </image_url>
                <small_image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1294099952p2/589.jpg]]>
                </small_image_url>
                <link>
                    <![CDATA[https://www.goodreads.com/author/show/589.Orson_Scott_Card]]>
                </link>
                <average_rating>4.09</average_rating>
                <ratings_count>2582277</ratings_count>
                <text_reviews_count>105351</text_reviews_count>
            </author>
            <author>
                <id>44767</id>
                <name>Stefan Rudnicki</name>
                <role>Narrator</role>
                <image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1450722701p5/44767.jpg]]>
                </image_url>
                <small_image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1450722701p2/44767.jpg]]>
                </small_image_url>
                <link>
                    <![CDATA[https://www.goodreads.com/author/show/44767.Stefan_Rudnicki]]>
                </link>
                <average_rating>4.30</average_rating>
                <ratings_count>1020478</ratings_count>
                <text_reviews_count>39335</text_reviews_count>
            </author>
            <author>
                <id>7415</id>
                <name>Harlan Ellison</name>
                <role>Narrator</role>
                <image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1377708311p5/7415.jpg]]>
                </image_url>
                <small_image_url nophoto='false'>
                    <![CDATA[https://images.gr-assets.com/authors/1377708311p2/7415.jpg]]>
                </small_image_url>
                <link>
                    <![CDATA[https://www.goodreads.com/author/show/7415.Harlan_Ellison]]>
                </link>
                <average_rating>4.29</average_rating>
                <ratings_count>1185739</ratings_count>
                <text_reviews_count>47003</text_reviews_count>
            </author>
        </authors>
        <reviews_widget>
            <![CDATA[
                <style>
          #goodreads-widget {
            font-family: georgia, serif;
            padding: 18px 0;
            width:565px;
          }
          #goodreads-widget h1 {
            font-weight:normal;
            font-size: 16px;
            border-bottom: 1px solid #BBB596;
            margin-bottom: 0;
          }
          #goodreads-widget a {
            text-decoration: none;
            color:#660;
          }
          iframe{
            background-color: #fff;
          }
          #goodreads-widget a:hover { text-decoration: underline; }
          #goodreads-widget a:active {
            color:#660;
          }
          #gr_footer {
            width: 100%;
            border-top: 1px solid #BBB596;
            text-align: right;
          }
          #goodreads-widget .gr_branding{
            color: #382110;
            font-size: 11px;
            text-decoration: none;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
          }
        </style><div id="goodreads-widget"><div id="gr_header"><h1><a rel="nofollow" href="https://www.goodreads.com/book/show/375802.Ender_s_Game">Ender’s Game Reviews</a></h1></div><iframe id="the_iframe" src="https://www.goodreads.com/api/reviews_widget_iframe?did=DEVELOPER_ID&amp;format=html&amp;isbn=0812550706&amp;links=660&amp;min_rating=&amp;review_back=fff&amp;stars=000&amp;text=000" width="565" height="400" frameborder="0"></iframe><div id="gr_footer"><a class="gr_branding" target="_blank" rel="nofollow noopener noreferrer" href="https://www.goodreads.com/book/show/375802.Ender_s_Game?utm_medium=api&amp;utm_source=reviews_widget">Reviews from Goodreads.com</a></div></div>

              ]]>
        </reviews_widget>
        <popular_shelves>
            <shelf name="to-read" count="389136"/>
            <shelf name="science-fiction" count="15215"/>
            <shelf name="favorites" count="14581"/>
            <shelf name="sci-fi" count="14478"/>
            <shelf name="currently-reading" count="12853"/>
            <shelf name="fiction" count="7420"/>
            <shelf name="young-adult" count="4613"/>
            <shelf name="fantasy" count="2777"/>
            <shelf name="scifi" count="2660"/>
            <shelf name="owned" count="2266"/>
            <shelf name="ya" count="1984"/>
            <shelf name="classics" count="1830"/>
            <shelf name="sci-fi-fantasy" count="1547"/>
            <shelf name="books-i-own" count="1496"/>
            <shelf name="series" count="1379"/>
            <shelf name="dystopian" count="1137"/>
            <shelf name="dystopia" count="1076"/>
            <shelf name="sf" count="835"/>
            <shelf name="book-club" count="835"/>
            <shelf name="audiobook" count="787"/>
            <shelf name="favourites" count="761"/>
            <shelf name="war" count="684"/>
            <shelf name="fantasy-sci-fi" count="644"/>
            <shelf name="kindle" count="621"/>
            <shelf name="scifi-fantasy" count="613"/>
            <shelf name="audiobooks" count="609"/>
            <shelf name="adventure" count="550"/>
            <shelf name="novels" count="524"/>
            <shelf name="all-time-favorites" count="520"/>
            <shelf name="space" count="479"/>
            <shelf name="library" count="472"/>
            <shelf name="aliens" count="469"/>
            <shelf name="owned-books" count="465"/>
            <shelf name="classic" count="454"/>
            <shelf name="default" count="451"/>
            <shelf name="re-read" count="410"/>
            <shelf name="orson-scott-card" count="395"/>
            <shelf name="audio" count="386"/>
            <shelf name="to-buy" count="377"/>
            <shelf name="science-fiction-fantasy" count="368"/>
            <shelf name="read-in-2013" count="361"/>
            <shelf name="ebook" count="360"/>
            <shelf name="favorite-books" count="340"/>
            <shelf name="school" count="317"/>
            <shelf name="military" count="300"/>
            <shelf name="coming-of-age" count="299"/>
            <shelf name="space-opera" count="299"/>
            <shelf name="audible" count="293"/>
            <shelf name="teen" count="292"/>
            <shelf name="favorite" count="292"/>
            <shelf name="speculative-fiction" count="280"/>
            <shelf name="my-books" count="280"/>
            <shelf name="adult" count="265"/>
            <shelf name="my-library" count="263"/>
            <shelf name="books" count="252"/>
            <shelf name="science" count="251"/>
            <shelf name="ebooks" count="242"/>
            <shelf name="recommended" count="237"/>
            <shelf name="ya-fiction" count="228"/>
            <shelf name="fantasy-scifi" count="227"/>
            <shelf name="5-stars" count="226"/>
            <shelf name="sci-fi-and-fantasy" count="222"/>
            <shelf name="novel" count="219"/>
            <shelf name="ender" count="217"/>
            <shelf name="futuristic" count="214"/>
            <shelf name="i-own" count="203"/>
            <shelf name="read-2013" count="203"/>
            <shelf name="dnf" count="196"/>
            <shelf name="action" count="196"/>
            <shelf name="reread" count="184"/>
            <shelf name="audio-books" count="180"/>
            <shelf name="childhood" count="179"/>
            <shelf name="shelfari-favorites" count="175"/>
            <shelf name="my-favorites" count="173"/>
            <shelf name="faves" count="170"/>
            <shelf name="ciencia-ficción" count="169"/>
            <shelf name="adult-fiction" count="167"/>
            <shelf name="literature" count="167"/>
            <shelf name="sf-fantasy" count="166"/>
            <shelf name="hugo" count="161"/>
            <shelf name="audio-book" count="161"/>
            <shelf name="children" count="159"/>
            <shelf name="english" count="158"/>
            <shelf name="read-in-2014" count="157"/>
            <shelf name="own-it" count="156"/>
            <shelf name="american" count="152"/>
            <shelf name="hugo-award" count="151"/>
            <shelf name="childrens" count="146"/>
            <shelf name="young-adult-fiction" count="143"/>
            <shelf name="high-school" count="141"/>
            <shelf name="wish-list" count="141"/>
            <shelf name="must-read" count="140"/>
            <shelf name="sciencefiction" count="139"/>
            <shelf name="bookclub" count="136"/>
            <shelf name="5-star" count="135"/>
            <shelf name="abandoned" count="134"/>
            <shelf name="read-for-school" count="132"/>
            <shelf name="did-not-finish" count="130"/>
            <shelf name="kids" count="130"/>
            <shelf name="reviewed" count="128"/>
        </popular_shelves>
        <book_links>
            <book_link>
                <id>8</id>
                <name>Libraries</name>
                <link>https://www.goodreads.com/book_link/follow/8</link>
            </book_link>
        </book_links>
        <buy_links>
            <buy_link>
                <id>1</id>
                <name>Amazon</name>
                <link>https://www.goodreads.com/book_link/follow/1</link>
            </buy_link>
            <buy_link>
                <id>10</id>
                <name>Audible</name>
                <link>https://www.goodreads.com/book_link/follow/10</link>
            </buy_link>
            <buy_link>
                <id>3</id>
                <name>Barnes &amp; Noble</name>
                <link>https://www.goodreads.com/book_link/follow/3</link>
            </buy_link>
            <buy_link>
                <id>1027</id>
                <name>Walmart eBooks</name>
                <link>https://www.goodreads.com/book_link/follow/1027</link>
            </buy_link>
            <buy_link>
                <id>2102</id>
                <name>Apple Books</name>
                <link>https://www.goodreads.com/book_link/follow/2102</link>
            </buy_link>
            <buy_link>
                <id>8036</id>
                <name>Google Play</name>
                <link>https://www.goodreads.com/book_link/follow/8036</link>
            </buy_link>
            <buy_link>
                <id>4</id>
                <name>Abebooks</name>
                <link>https://www.goodreads.com/book_link/follow/4</link>
            </buy_link>
            <buy_link>
                <id>882</id>
                <name>Book Depository</name>
                <link>https://www.goodreads.com/book_link/follow/882</link>
            </buy_link>
            <buy_link>
                <id>5</id>
                <name>Alibris</name>
                <link>https://www.goodreads.com/book_link/follow/5</link>
            </buy_link>
            <buy_link>
                <id>9</id>
                <name>Indigo</name>
                <link>https://www.goodreads.com/book_link/follow/9</link>
            </buy_link>
            <buy_link>
                <id>107</id>
                <name>Better World Books</name>
                <link>https://www.goodreads.com/book_link/follow/107</link>
            </buy_link>
            <buy_link>
                <id>7</id>
                <name>IndieBound</name>
                <link>https://www.goodreads.com/book_link/follow/7</link>
            </buy_link>
            <buy_link>
                <id>17439</id>
                <name>Amazon AU</name>
                <link>https://www.goodreads.com/book_link/follow/17439</link>
            </buy_link>
        </buy_links>
        <series_works>
            <series_work>
                <id>162174</id>
                <user_position>1</user_position>
                <series>
                    <id>43963</id>
                    <title>
                        <![CDATA[
            Ender’s Saga
        ]]>
                    </title>
                    <description>
                        <![CDATA[
            The Ender's Game series (also known as the "Ender Quintet") is sometimes called Enderverse or the Ender Saga. It is a series of science fiction books by Orson Scott Card. The series started with the novelette "Ender's Game", which was later expanded into the novel Ender's Game. It currently consists of eleven novels and ten short stories. The first two novels in the series, Ender's Game and Speaker for the Dead, each won both the Hugo and Nebula Awards, and were among the most influential science fiction novels of the 1980s.

            Also See <a href="https://www.goodreads.com/series/40409-ender-s-shadow">Ender's Shadow</a> parallel series and <a href="https://www.goodreads.com/series/72732-the-first-formic-war">The First Formic War</a> prequel series.

            For the entire Ender's Universe in Chronological Order, see <a href="https://www.goodreads.com/series/119216-the-enderverse-chronological-order">The Enderverse (Chronological Order)</a>.

            First Meetings in Ender's Universe is a collection of 3 Short Stories, and the original Ender's Game Novella.  The two short stories titles Polish Boy and Teacher's Pest are prequels to the entire Ender's Saga. The short story Investment Counselor takes place between Ender in Exile and Speaker for the Dead.

            A War of Gifts is a short story that takes place during Ender's Game, sometime during the middle of the book.

            Ender in Exile replaces the last chapter of Ender's Game and expands it into its own novel. It also occurs consecutively with <a href=http://www.goodreads.com/series/40409-shadow>The Shadow Saga</a>, a side-series that occurs before Speaker for the Dead.

            For the series in publication order, see: <a href="http://www.goodreads.com/series/65565-ender-s-saga-publication-order">Ender's Saga (Publication Order)</a>.

            For other short stories of the Ender's universe, see <a href="https://www.goodreads.com/series/116779-ender-s-saga-short-stories">Ender's Saga short stories</a>.

            Subseries within the Ender saga:
            <a href="https://www.goodreads.com/series/43963-the-ender-quintet">Ender Quintet</a><a href="https://www.goodreads.com/series/40409-ender-s-shadow">The Shadow Series</a><a href="https://www.goodreads.com/series/72732-the-first-formic-war">First Formic War</a><a href="https://www.goodreads.com/series/181467-the-second-formic-war">Second Formic War</a><a href="https://www.goodreads.com/series/216234-fleet-school">Fleet School</a><a href="https://www.goodreads.com/series/116779-ender-s-saga-short-stories">Other Tales from the Ender Universe</a>
        ]]>
                    </description>
                    <note>
                        <![CDATA[
            Librarians Note: First Meetings in Ender's Universe is a collection of 3 Short Stories, and the original Ender's Game Novella.  The two short stories titles Polish Boy and Teacher's Pest are prequels to the entire Ender's Saga. The short story Investment Counselor takes place between Ender in Exile and Speaker for the Dead.

            A War of Gifts is a short story that takes place during Ender's Game, sometime during the middle of the book.

            Ender in Exile replaces the last chapter of Ender's Game and expands it into its own novel. It also occurs consecutively with <a href=http://www.goodreads.com/series/40409-shadow>The Shadow Saga</a>, a side-series that occurs before Speaker for the Dead.

            Shadows in Flight takes place during the books Speaker for the Dead, Xenocide, and Children of the Mind.

            Shadows Alive, the last, and as-of-yet unwritten, book in the Shadow Saga is a book that occurs after the conclusion of Children of the Mind

            For the series in publication order, see: <a href="http://www.goodreads.com/series/65565-ender-s-saga-publication-order">Ender's Saga (Publication Order)</a>.

            For other short stories of the Ender's universe, see <a href="https://www.goodreads.com/series/116779-ender-s-saga-short-stories">Ender's Saga short stories</a>.
        ]]>
                    </note>
                    <series_works_count>7</series_works_count>
                    <primary_work_count>4</primary_work_count>
                    <numbered>true</numbered>
                </series>
            </series_work>
            <series_work>
                <id>288270</id>
                <user_position>1</user_position>
                <series>
                    <id>65565</id>
                    <title>
                        <![CDATA[
            Enderverse:  Publication Order
        ]]>
                    </title>
                    <description>
                        <![CDATA[
            This series listing gives the Ender books in publication order.

            For the books in chronological order, see <a href="http://www.goodreads.com/series/43963-ender-s-saga">The Ender Quintet</a> (which will also give more complete information about the series) and <a href="http://www.goodreads.com/series/40409-shadow">The Shadow Series</a>.

            For other short stories of the Ender's universe, see <a href="https://www.goodreads.com/series/116779-ender-s-saga-short-stories">Ender's Saga short stories</a>

            Note: Omnibuses/box sets are not included in this listing.

            <a href="https://www.goodreads.com/series/119216-the-enderverse-chronological-order">The Enderverse (Chronological Order)</a>

            Individual series are available here:
            <a href="https://www.goodreads.com/series/43963-the-ender-quintet">The Ender Quintet</a><a href="https://www.goodreads.com/series/40409-ender-s-shadow">The Shadow Series</a><a href="https://www.goodreads.com/series/72732-the-first-formic-war">The First Formic War</a><a href="https://www.goodreads.com/series/181467-the-second-formic-war">The Second Formic War</a><a href="https://www.goodreads.com/series/216234-fleet-school">Fleet School</a><a href="https://www.goodreads.com/series/116779-ender-s-saga-short-stories">Other Tales from the Ender Universe</a>
        ]]>
                    </description>
                    <note>
                        <![CDATA[
            The Ender Quintet is the official series title. I updated the title accordingly. Ender's Saga is a popular term but is not accurate.

            The Shadow Series is official where Shadow Saga is not... someone else had mentioned that "Series" should not be in series title due to goodreads rules, but the librarian manual does <b>not</b> state this.  However, with this in mind, the series most commonly recognized across the web is "Ender's Shadow" series. So it was updated accordingly.
        ]]>
                    </note>
                    <series_works_count>17</series_works_count>
                    <primary_work_count>17</primary_work_count>
                    <numbered>true</numbered>
                </series>
            </series_work>
            <series_work>
                <id>578752</id>
                <user_position>6</user_position>
                <series>
                    <id>119216</id>
                    <title>
                        <![CDATA[
            The Enderverse
        ]]>
                    </title>
                    <description>
                        <![CDATA[
            Chronological Order

            This contains all the books in the universe of Ender's Game, to include <a href="https://www.goodreads.com/series/43963-the-ender-quintet/">The Ender Quintet</a>, <ahref="https://www.goodreads.com/series/40409-ender-s-shadow">The Shadow Saga</a>, and <a href="https://www.goodreads.com/series/72732-the-first-formic-war">The First Formic War</a>.

            For the best order to read the books in, follow this list Starting at First Meetings through Shadows Alive, then read the prequel trilogy.
        ]]>
                    </description>
                    <note>
                        <![CDATA[
            Chronological Order)
        ]]>
                    </note>
                    <series_works_count>18</series_works_count>
                    <primary_work_count>18</primary_work_count>
                    <numbered>true</numbered>
                </series>
            </series_work>
        </series_works>
        <similar_books>
            <book>
                <id>44767458</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.hAfjpcV1EtlPe7qvdmKeDA]]>
                </uri>
                <title>Dune (Dune, #1)</title>
                <title_without_series>Dune</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/44767458-dune]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1555447414l/44767458._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1555447414l/44767458._SX98_.jpg]]>
                </image_url>
                <num_pages>688</num_pages>
                <work>
                    <id>3634639</id>
                </work>
                <isbn>059309932X</isbn>
                <isbn13>9780593099322</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2019</publication_year>
                <publication_month>10</publication_month>
                <publication_day>1</publication_day>
                <authors>
                    <author>
                        <id>58</id>
                        <name>Frank Herbert</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/58.Frank_Herbert]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>386162</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.T3kHCY3uRqZNaTlMkxXbwQ]]>
                </uri>
                <title>
                    <![CDATA[The Hitchhiker's Guide to the Galaxy (Hitchhiker's Guide to the Galaxy, #1)]]>
                </title>
                <title_without_series>
                    <![CDATA[The Hitchhiker's Guide to the Galaxy]]>
                </title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/386162.The_Hitchhiker_s_Guide_to_the_Galaxy]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1559986152l/386162._SX50_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1559986152l/386162._SX98_.jpg]]>
                </image_url>
                <num_pages>193</num_pages>
                <work>
                    <id>3078186</id>
                </work>
                <isbn></isbn>
                <isbn13></isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2007</publication_year>
                <publication_month>6</publication_month>
                <publication_day>23</publication_day>
                <authors>
                    <author>
                        <id>4</id>
                        <name>Douglas Adams</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/4.Douglas_Adams]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>5907</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.7HhPxEJT1NiirAiej27XwA]]>
                </uri>
                <title>
                    <![CDATA[The Hobbit, or There and Back Again]]>
                </title>
                <title_without_series>
                    <![CDATA[The Hobbit, or There and Back Again]]>
                </title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/5907.The_Hobbit_or_There_and_Back_Again]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1546071216l/5907._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1546071216l/5907._SX98_.jpg]]>
                </image_url>
                <num_pages>366</num_pages>
                <work>
                    <id>1540236</id>
                </work>
                <isbn>0618260307</isbn>
                <isbn13>9780618260300</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2002</publication_year>
                <publication_month>8</publication_month>
                <publication_day>15</publication_day>
                <authors>
                    <author>
                        <id>656983</id>
                        <name>J.R.R. Tolkien</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/656983.J_R_R_Tolkien]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>29579</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.tpjXJjtCkXTyh6kZuu57VQ]]>
                </uri>
                <title>Foundation (Foundation, #1)</title>
                <title_without_series>Foundation</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/29579.Foundation]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1417900846l/29579._SX50_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1417900846l/29579._SX98_.jpg]]>
                </image_url>
                <num_pages>244</num_pages>
                <work>
                    <id>1783981</id>
                </work>
                <isbn>0553803719</isbn>
                <isbn13>9780553803716</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2004</publication_year>
                <publication_month>6</publication_month>
                <publication_day>1</publication_day>
                <authors>
                    <author>
                        <id>16667</id>
                        <name>Isaac Asimov</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/16667.Isaac_Asimov]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>18007564</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.O5h1YAnBEe0cYP_KkaVAcA]]>
                </uri>
                <title>The Martian</title>
                <title_without_series>The Martian</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/18007564-the-martian]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1413706054l/18007564._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1413706054l/18007564._SX98_.jpg]]>
                </image_url>
                <num_pages>369</num_pages>
                <work>
                    <id>21825181</id>
                </work>
                <isbn>0804139024</isbn>
                <isbn13>9780804139021</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2014</publication_year>
                <publication_month>2</publication_month>
                <publication_day>11</publication_day>
                <authors>
                    <author>
                        <id>6540057</id>
                        <name>Andy Weir</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/6540057.Andy_Weir]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>9969571</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.O7Z7pbcZBweK_cRvReWvwQ]]>
                </uri>
                <title>
                    <![CDATA[Ready Player One (Ready Player One, #1)]]>
                </title>
                <title_without_series>Ready Player One</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/9969571-ready-player-one]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1500930947l/9969571._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1500930947l/9969571._SX98_.jpg]]>
                </image_url>
                <num_pages>374</num_pages>
                <work>
                    <id>14863741</id>
                </work>
                <isbn>030788743X</isbn>
                <isbn13>9780307887436</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2011</publication_year>
                <publication_month>8</publication_month>
                <publication_day>16</publication_day>
                <authors>
                    <author>
                        <id>31712</id>
                        <name>Ernest Cline</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/31712.Ernest_Cline]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>40961427</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.zhUOQmSWRGKlQ7eRG3QkRw]]>
                </uri>
                <title>1984</title>
                <title_without_series>1984</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/40961427-1984]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1532714506l/40961427._SX50_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1532714506l/40961427._SX98_.jpg]]>
                </image_url>
                <num_pages>237</num_pages>
                <work>
                    <id>153313</id>
                </work>
                <isbn></isbn>
                <isbn13></isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2013</publication_year>
                <publication_month>9</publication_month>
                <publication_day>3</publication_day>
                <authors>
                    <author>
                        <id>3706</id>
                        <name>George Orwell</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/3706.George_Orwell]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>13496</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.2TDKEBAExkzaok9ELm7icw]]>
                </uri>
                <title>
                    <![CDATA[A Game of Thrones (A Song of Ice and Fire, #1)]]>
                </title>
                <title_without_series>A Game of Thrones</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/13496.A_Game_of_Thrones]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1562726234l/13496._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1562726234l/13496._SY160_.jpg]]>
                </image_url>
                <num_pages>835</num_pages>
                <work>
                    <id>1466917</id>
                </work>
                <isbn>0553588486</isbn>
                <isbn13>9780553588484</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2005</publication_year>
                <publication_month>8</publication_month>
                <publication_day></publication_day>
                <authors>
                    <author>
                        <id>346732</id>
                        <name>George R.R. Martin</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/346732.George_R_R_Martin]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>3</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.tJT_00n8UPpvWa-zWHEAXg]]>
                </uri>
                <title>
                    <![CDATA[Harry Potter and the Sorcerer's Stone (Harry Potter, #1)]]>
                </title>
                <title_without_series>
                    <![CDATA[Harry Potter and the Sorcerer's Stone]]>
                </title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/3.Harry_Potter_and_the_Sorcerer_s_Stone]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1474154022l/3._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1474154022l/3._SX98_.jpg]]>
                </image_url>
                <num_pages>309</num_pages>
                <work>
                    <id>4640799</id>
                </work>
                <isbn></isbn>
                <isbn13></isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2003</publication_year>
                <publication_month>11</publication_month>
                <publication_day>1</publication_day>
                <authors>
                    <author>
                        <id>1077326</id>
                        <name>J.K. Rowling</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/1077326.J_K_Rowling]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>13079982</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.t_QHIvTlavta-Y2of512_w]]>
                </uri>
                <title>Fahrenheit 451</title>
                <title_without_series>Fahrenheit 451</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/13079982-fahrenheit-451]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1383718290l/13079982._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1383718290l/13079982._SX98_.jpg]]>
                </image_url>
                <num_pages>194</num_pages>
                <work>
                    <id>1272463</id>
                </work>
                <isbn></isbn>
                <isbn13></isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2011</publication_year>
                <publication_month>11</publication_month>
                <publication_day>29</publication_day>
                <authors>
                    <author>
                        <id>1630</id>
                        <name>Ray Bradbury</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/1630.Ray_Bradbury]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>34</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.hXYxyh2e6v35GVINqBPuBA]]>
                </uri>
                <title>
                    <![CDATA[The Fellowship of the Ring (The Lord of the Rings, #1)]]>
                </title>
                <title_without_series>The Fellowship of the Ring</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/34.The_Fellowship_of_the_Ring]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1298411339l/34._SX50_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1298411339l/34._SX98_.jpg]]>
                </image_url>
                <num_pages>398</num_pages>
                <work>
                    <id>3204327</id>
                </work>
                <isbn>0618346252</isbn>
                <isbn13>9780618346257</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2003</publication_year>
                <publication_month>9</publication_month>
                <publication_day>5</publication_day>
                <authors>
                    <author>
                        <id>656983</id>
                        <name>J.R.R. Tolkien</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/656983.J_R_R_Tolkien]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>113436</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.sENfnM5bhDL2KDptf_RjUA]]>
                </uri>
                <title>
                    <![CDATA[Eragon (The Inheritance Cycle, #1)]]>
                </title>
                <title_without_series>Eragon</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/113436.Eragon]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1366212852l/113436._SX50_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1366212852l/113436._SX98_.jpg]]>
                </image_url>
                <num_pages>503</num_pages>
                <work>
                    <id>3178011</id>
                </work>
                <isbn>0375826696</isbn>
                <isbn13>9780375826696</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2005</publication_year>
                <publication_month>4</publication_month>
                <publication_day></publication_day>
                <authors>
                    <author>
                        <id>8349</id>
                        <name>Christopher Paolini</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/8349.Christopher_Paolini]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>3636</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.GPbAGKAn74SSnh0UZRWyPA]]>
                </uri>
                <title>The Giver (The Giver, #1)</title>
                <title_without_series>The Giver</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/3636.The_Giver]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1342493368l/3636._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1342493368l/3636._SY160_.jpg]]>
                </image_url>
                <num_pages>208</num_pages>
                <work>
                    <id>2543234</id>
                </work>
                <isbn>0385732554</isbn>
                <isbn13>9780385732550</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2006</publication_year>
                <publication_month>1</publication_month>
                <publication_day>24</publication_day>
                <authors>
                    <author>
                        <id>2493</id>
                        <name>Lois Lowry</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/2493.Lois_Lowry]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>2767052</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.YaoKZD8xVx72w5T1ZgR1YQ]]>
                </uri>
                <title>
                    <![CDATA[The Hunger Games (The Hunger Games, #1)]]>
                </title>
                <title_without_series>The Hunger Games</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/2767052-the-hunger-games]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1586722975l/2767052._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1586722975l/2767052._SX98_.jpg]]>
                </image_url>
                <num_pages>374</num_pages>
                <work>
                    <id>2792775</id>
                </work>
                <isbn>0439023483</isbn>
                <isbn13>9780439023481</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2008</publication_year>
                <publication_month>9</publication_month>
                <publication_day>14</publication_day>
                <authors>
                    <author>
                        <id>153394</id>
                        <name>Suzanne Collins</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/153394.Suzanne_Collins]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>36402034</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.lENz7wsiugnkZNIWJ-zhOg]]>
                </uri>
                <title>
                    <![CDATA[Do Androids Dream of Electric Sheep?]]>
                </title>
                <title_without_series>
                    <![CDATA[Do Androids Dream of Electric Sheep?]]>
                </title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/36402034-do-androids-dream-of-electric-sheep]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1507838927l/36402034._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1507838927l/36402034._SY160_.jpg]]>
                </image_url>
                <num_pages>258</num_pages>
                <work>
                    <id>830939</id>
                </work>
                <isbn></isbn>
                <isbn13></isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2008</publication_year>
                <publication_month>2</publication_month>
                <publication_day>26</publication_day>
                <authors>
                    <author>
                        <id>4764</id>
                        <name>Philip K. Dick</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/4764.Philip_K_Dick]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>5129</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.-kk1f25jPWvQSYx7iIvZgQ]]>
                </uri>
                <title>Brave New World</title>
                <title_without_series>Brave New World</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/5129.Brave_New_World]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1575509280l/5129._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1575509280l/5129._SX98_.jpg]]>
                </image_url>
                <num_pages>288</num_pages>
                <work>
                    <id>3204877</id>
                </work>
                <isbn>0060929871</isbn>
                <isbn13>9780060929879</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>1998</publication_year>
                <publication_month>9</publication_month>
                <publication_day>1</publication_day>
                <authors>
                    <author>
                        <id>3487</id>
                        <name>Aldous Huxley</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/3487.Aldous_Huxley]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>40604658</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.n8FYmFYqGVSZsX1_dHhH3g]]>
                </uri>
                <title>
                    <![CDATA[Jurassic Park (Jurassic Park, #1)]]>
                </title>
                <title_without_series>Jurassic Park</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/40604658-jurassic-park]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1529604411l/40604658._SY75_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1529604411l/40604658._SY160_.jpg]]>
                </image_url>
                <num_pages>466</num_pages>
                <work>
                    <id>3376836</id>
                </work>
                <isbn></isbn>
                <isbn13></isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2012</publication_year>
                <publication_month>5</publication_month>
                <publication_day>14</publication_day>
                <authors>
                    <author>
                        <id>5194</id>
                        <name>Michael Crichton</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/5194.Michael_Crichton]]>
                        </link>
                    </author>
                </authors>
            </book>
            <book>
                <id>99219</id>
                <uri>
                    <![CDATA[kca://book/amzn1.gr.book.v1.gwZIhxSCU3_RRkddo9SNZQ]]>
                </uri>
                <title>
                    <![CDATA[The Butlerian Jihad (Legends of Dune, #1)]]>
                </title>
                <title_without_series>The Butlerian Jihad</title_without_series>
                <link>
                    <![CDATA[https://www.goodreads.com/book/show/99219.The_Butlerian_Jihad]]>
                </link>
                <small_image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1505458671l/99219._SX50_.jpg]]>
                </small_image_url>
                <image_url>
                    <![CDATA[https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1505458671l/99219._SX98_.jpg]]>
                </image_url>
                <num_pages>684</num_pages>
                <work>
                    <id>1278722</id>
                </work>
                <isbn>0765340771</isbn>
                <isbn13>9780765340771</isbn13>
                <average_rating>4.30</average_rating>
                <ratings_count>1086849</ratings_count>
                <publication_year>2003</publication_year>
                <publication_month>9</publication_month>
                <publication_day>15</publication_day>
                <authors>
                    <author>
                        <id>56</id>
                        <name>Brian Herbert</name>
                        <link>
                            <![CDATA[https://www.goodreads.com/author/show/56.Brian_Herbert]]>
                        </link>
                    </author>
                </authors>
            </book>
        </similar_books>
        </book>
        </GoodreadsResponse>
        """.data(using: .utf8)!

    }

    // MARK: -

    enum SearchBooks {

        // MARK: - Properties

        static let regularXML = """
        <?xml version="1.0" encoding="UTF-8"?>
        <GoodreadsResponse>
        <Request>
        <authentication>true</authentication>
        <key>
            <![CDATA[JQfiS9k0doIho3vm13Qxdg]]>
        </key>
        <method>
            <![CDATA[search_index]]>
        </method>
        </Request>
        <search>
        <query>
            <![CDATA[Ender's Game]]>
        </query>
        <results-start>1</results-start>
        <results-end>20</results-end>
        <total-results>749</total-results>
        <source>Goodreads</source>
        <query-time-seconds>0.04</query-time-seconds>
        <results>
            <work>
                <id type="integer">2422333</id>
                <books_count type="integer">254</books_count>
                <ratings_count type="integer">1086861</ratings_count>
                <text_reviews_count type="integer">42550</text_reviews_count>
                <original_publication_year type="integer">1985</original_publication_year>
                <original_publication_month type="integer" nil="true"/>
                <original_publication_day type="integer" nil="true"/>
                <average_rating>4.30</average_rating>
                <best_book type="Book">
                    <id type="integer">375802</id>
                    <title>Ender’s Game (Ender’s Saga, #1)</title>
                    <author>
                        <id type="integer">589</id>
                        <name>Orson Scott Card</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1408303130l/375802._SY160_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1408303130l/375802._SY75_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">938064</id>
                <books_count type="integer">5</books_count>
                <ratings_count type="integer">83055</ratings_count>
                <text_reviews_count type="integer">880</text_reviews_count>
                <original_publication_year type="integer">1984</original_publication_year>
                <original_publication_month type="integer">12</original_publication_month>
                <original_publication_day type="integer" nil="true"/>
                <average_rating>4.18</average_rating>
                <best_book type="Book">
                    <id type="integer">44687</id>
                    <title>Enchanters' End Game (The Belgariad, #5)</title>
                    <author>
                        <id type="integer">8732</id>
                        <name>David Eddings</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1217735909l/44687._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1217735909l/44687._SY75_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">6581562</id>
                <books_count type="integer">5</books_count>
                <ratings_count type="integer">35661</ratings_count>
                <text_reviews_count type="integer">238</text_reviews_count>
                <original_publication_year type="integer">2009</original_publication_year>
                <original_publication_month type="integer" nil="true"/>
                <original_publication_day type="integer" nil="true"/>
                <average_rating>4.39</average_rating>
                <best_book type="Book">
                    <id type="integer">6393082</id>
                    <title>Ender's Game, Volume 1: Battle School (Ender's Saga)</title>
                    <author>
                        <id type="integer">38491</id>
                        <name>Christopher Yost</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">55447683</id>
                <books_count type="integer">46</books_count>
                <ratings_count type="integer">32628</ratings_count>
                <text_reviews_count type="integer">2084</text_reviews_count>
                <original_publication_year type="integer">2017</original_publication_year>
                <original_publication_month type="integer">11</original_publication_month>
                <original_publication_day type="integer">14</original_publication_day>
                <average_rating>4.15</average_rating>
                <best_book type="Book">
                    <id type="integer">34368113</id>
                    <title>End Game (Will Robie, #5)</title>
                    <author>
                        <id type="integer">9291</id>
                        <name>David Baldacci</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1495976812l/34368113._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1495976812l/34368113._SY75_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">43992</id>
                <books_count type="integer">7</books_count>
                <ratings_count type="integer">14097</ratings_count>
                <text_reviews_count type="integer">246</text_reviews_count>
                <original_publication_year type="integer">1984</original_publication_year>
                <original_publication_month type="integer" nil="true"/>
                <original_publication_day type="integer" nil="true"/>
                <average_rating>4.27</average_rating>
                <best_book type="Book">
                    <id type="integer">44660</id>
                    <title>The Belgariad Boxed Set: Pawn of Prophecy / Queen of Sorcery / Magician's Gambit / Castle of Wizardry / Enchanters' End Game (The Belgariad, #1-5)</title>
                    <author>
                        <id type="integer">8732</id>
                        <name>David Eddings</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1391347386l/44660._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1391347386l/44660._SX50_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">7272274</id>
                <books_count type="integer">3</books_count>
                <ratings_count type="integer">15054</ratings_count>
                <text_reviews_count type="integer">56</text_reviews_count>
                <original_publication_year type="integer">2010</original_publication_year>
                <original_publication_month type="integer">3</original_publication_month>
                <original_publication_day type="integer">24</original_publication_day>
                <average_rating>4.60</average_rating>
                <best_book type="Book">
                    <id type="integer">7025086</id>
                    <title>Ender's Game, Volume 2: Command School</title>
                    <author>
                        <id type="integer">38491</id>
                        <name>Christopher Yost</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">56291562</id>
                <books_count type="integer">7</books_count>
                <ratings_count type="integer">6987</ratings_count>
                <text_reviews_count type="integer">366</text_reviews_count>
                <original_publication_year type="integer">2017</original_publication_year>
                <original_publication_month type="integer">7</original_publication_month>
                <original_publication_day type="integer">9</original_publication_day>
                <average_rating>4.17</average_rating>
                <best_book type="Book">
                    <id type="integer">35010791</id>
                    <title>The Gender End (The Gender Game, #7)</title>
                    <author>
                        <id type="integer">6860531</id>
                        <name>Bella Forrest</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">42437887</id>
                <books_count type="integer">7</books_count>
                <ratings_count type="integer">5472</ratings_count>
                <text_reviews_count type="integer">670</text_reviews_count>
                <original_publication_year type="integer">2015</original_publication_year>
                <original_publication_month type="integer">9</original_publication_month>
                <original_publication_day type="integer">8</original_publication_day>
                <average_rating>4.11</average_rating>
                <best_book type="Book">
                    <id type="integer">22874150</id>
                    <title>The End Game</title>
                    <author>
                        <id type="integer">6876994</id>
                        <name>Kate  McCarthy</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1423089153l/22874150._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1423089153l/22874150._SY75_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">938065</id>
                <books_count type="integer">10</books_count>
                <ratings_count type="integer">7325</ratings_count>
                <text_reviews_count type="integer">145</text_reviews_count>
                <original_publication_year type="integer">1980</original_publication_year>
                <original_publication_month type="integer">1</original_publication_month>
                <original_publication_day type="integer">1</original_publication_day>
                <average_rating>4.39</average_rating>
                <best_book type="Book">
                    <id type="integer">18879</id>
                    <title>The Belgariad, Vol. Two: Castle of Wizardry / Enchanters' End Game (The Belgariad, #4-5)</title>
                    <author>
                        <id type="integer">8732</id>
                        <name>David Eddings</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">44223038</id>
                <books_count type="integer">20</books_count>
                <ratings_count type="integer">6206</ratings_count>
                <text_reviews_count type="integer">473</text_reviews_count>
                <original_publication_year type="integer">2015</original_publication_year>
                <original_publication_month type="integer">9</original_publication_month>
                <original_publication_day type="integer">15</original_publication_day>
                <average_rating>4.27</average_rating>
                <best_book type="Book">
                    <id type="integer">24611928</id>
                    <title>The End Game (A Brit in the FBI, #3)</title>
                    <author>
                        <id type="integer">1239</id>
                        <name>Catherine Coulter</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1425319746l/24611928._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1425319746l/24611928._SX50_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">56238306</id>
                <books_count type="integer">5</books_count>
                <ratings_count type="integer">2455</ratings_count>
                <text_reviews_count type="integer">91</text_reviews_count>
                <original_publication_year type="integer">2017</original_publication_year>
                <original_publication_month type="integer">4</original_publication_month>
                <original_publication_day type="integer">24</original_publication_day>
                <average_rating>4.32</average_rating>
                <best_book type="Book">
                    <id type="integer">34963329</id>
                    <title>End Game (Jack Noble #12)</title>
                    <author>
                        <id type="integer">6151659</id>
                        <name>L.T. Ryan</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">66029652</id>
                <books_count type="integer">3</books_count>
                <ratings_count type="integer">1375</ratings_count>
                <text_reviews_count type="integer">150</text_reviews_count>
                <original_publication_year type="integer" nil="true"/>
                <original_publication_month type="integer" nil="true"/>
                <original_publication_day type="integer" nil="true"/>
                <average_rating>4.03</average_rating>
                <best_book type="Book">
                    <id type="integer">42372731</id>
                    <title>The End Game (Love Games #2)</title>
                    <author>
                        <id type="integer">15996299</id>
                        <name>Mickey Miller</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">51609213</id>
                <books_count type="integer">8</books_count>
                <ratings_count type="integer">1227</ratings_count>
                <text_reviews_count type="integer">277</text_reviews_count>
                <original_publication_year type="integer">2018</original_publication_year>
                <original_publication_month type="integer">1</original_publication_month>
                <original_publication_day type="integer">2</original_publication_day>
                <average_rating>4.22</average_rating>
                <best_book type="Book">
                    <id type="integer">30985221</id>
                    <title>End Game (Dirty Money, #4)</title>
                    <author>
                        <id type="integer">73977</id>
                        <name>Lisa Renee Jones</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1497740135l/30985221._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1497740135l/30985221._SX50_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">53830455</id>
                <books_count type="integer">5</books_count>
                <ratings_count type="integer">2276</ratings_count>
                <text_reviews_count type="integer">162</text_reviews_count>
                <original_publication_year type="integer">2016</original_publication_year>
                <original_publication_month type="integer">11</original_publication_month>
                <original_publication_day type="integer">27</original_publication_day>
                <average_rating>4.42</average_rating>
                <best_book type="Book">
                    <id type="integer">33144572</id>
                    <title>End Game (Fallen Empire, #8)</title>
                    <author>
                        <id type="integer">4512224</id>
                        <name>Lindsay Buroker</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">61846440</id>
                <books_count type="integer">2</books_count>
                <ratings_count type="integer">1266</ratings_count>
                <text_reviews_count type="integer">236</text_reviews_count>
                <original_publication_year type="integer">2018</original_publication_year>
                <original_publication_month type="integer">5</original_publication_month>
                <original_publication_day type="integer">23</original_publication_day>
                <average_rating>4.40</average_rating>
                <best_book type="Book">
                    <id type="integer">39947220</id>
                    <title>End Game (Bellevue Bullies, #4)</title>
                    <author>
                        <id type="integer">5255580</id>
                        <name>Toni Aleo</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1526291653l/39947220._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1526291653l/39947220._SY75_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">19174329</id>
                <books_count type="integer">10</books_count>
                <ratings_count type="integer">600</ratings_count>
                <text_reviews_count type="integer">111</text_reviews_count>
                <original_publication_year type="integer">2013</original_publication_year>
                <original_publication_month type="integer">1</original_publication_month>
                <original_publication_day type="integer">1</original_publication_day>
                <average_rating>3.74</average_rating>
                <best_book type="Book">
                    <id type="integer">13586977</id>
                    <title>Ender's World: Fresh Perspectives on the SF Classic Ender's Game</title>
                    <author>
                        <id type="integer">589</id>
                        <name>Orson Scott Card</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1344608510l/13586977._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1344608510l/13586977._SX50_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">12531</id>
                <books_count type="integer">1</books_count>
                <ratings_count type="integer">1890</ratings_count>
                <text_reviews_count type="integer">87</text_reviews_count>
                <original_publication_year type="integer">2001</original_publication_year>
                <original_publication_month type="integer">10</original_publication_month>
                <original_publication_day type="integer">14</original_publication_day>
                <average_rating>4.22</average_rating>
                <best_book type="Book">
                    <id type="integer">9736</id>
                    <title>Beyond Ender's Game: Speaker for the Dead, Xenocide, Children of the Mind (Ender's Saga, #2-4)</title>
                    <author>
                        <id type="integer">589</id>
                        <name>Orson Scott Card</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">12530</id>
                <books_count type="integer">3</books_count>
                <ratings_count type="integer">1903</ratings_count>
                <text_reviews_count type="integer">60</text_reviews_count>
                <original_publication_year type="integer">2002</original_publication_year>
                <original_publication_month type="integer">9</original_publication_month>
                <original_publication_day type="integer">16</original_publication_day>
                <average_rating>4.49</average_rating>
                <best_book type="Book">
                    <id type="integer">9735</id>
                    <title>Ender's Game Boxed Set: Ender's Game, Ender's Shadow, Shadow of the Hegemon</title>
                    <author>
                        <id type="integer">589</id>
                        <name>Orson Scott Card</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">71051396</id>
                <books_count type="integer">4</books_count>
                <ratings_count type="integer">325</ratings_count>
                <text_reviews_count type="integer">191</text_reviews_count>
                <original_publication_year type="integer">2020</original_publication_year>
                <original_publication_month type="integer">1</original_publication_month>
                <original_publication_day type="integer" nil="true"/>
                <average_rating>4.26</average_rating>
                <best_book type="Book">
                    <id type="integer">46125032</id>
                    <title>End Game (Capital Intrigue, #1)</title>
                    <author>
                        <id type="integer">7913140</id>
                        <name>Rachel Dylan</name>
                    </author>
                    <image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1563377096l/46125032._SX98_.jpg</image_url>
                    <small_image_url>https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1563377096l/46125032._SY75_.jpg</small_image_url>
                </best_book>
            </work>
            <work>
                <id type="integer">56991591</id>
                <books_count type="integer">5</books_count>
                <ratings_count type="integer">1315</ratings_count>
                <text_reviews_count type="integer">65</text_reviews_count>
                <original_publication_year type="integer">2017</original_publication_year>
                <original_publication_month type="integer">7</original_publication_month>
                <original_publication_day type="integer">7</original_publication_day>
                <average_rating>4.27</average_rating>
                <best_book type="Book">
                    <id type="integer">35623296</id>
                    <title>End Game</title>
                    <author>
                        <id type="integer">6422267</id>
                        <name>Charlie Gallagher</name>
                    </author>
                    <image_url>https://s.gr-assets.com/assets/nophoto/book/111x148-bcc042a9c91a29c1d680899eff700a03.png</image_url>
                    <small_image_url>https://s.gr-assets.com/assets/nophoto/book/50x75-a91bf249278a81aabab721ef782c4a74.png</small_image_url>
                </best_book>
            </work>
        </results>
        </search>
        </GoodreadsResponse>
        """.data(using: .utf8)!

    }

}

// MARK: -

enum TestResult {

    enum BookInfo {

        // MARK: - Properties

        static let regularResult = Book(
            id: "375802", 
            authors: ["Orson Scott Card",
                      "Stefan Rudnicki",
                      "Harlan Ellison"],
            title: "Ender\'s Game", 
            description: "Andrew \"Ender\" Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. The result of genetic experimentation, Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast.<br /><br />But Ender is not the only result of the experiment. The war with the Buggers has been raging for a hundred years, and the quest for the perfect general has been underway almost as long. Ender's two older siblings, Peter and Valentine, are every bit as unusual as he is, but in very different ways. While Peter was too uncontrollably violent, Valentine very nearly lacks the capability for violence altogether. Neither was found suitable for the military's purpose. But they are driven by their jealousy of Ender, and by their inbred drive for power. Peter seeks to control the political process, to become a ruler. Valentine's abilities turn more toward the subtle control of the beliefs of commoner and elite alike, through powerfully convincing essays. Hiding their youth and identities behind the anonymity of the computer networks, these two begin working together to shape the destiny of Earth-an Earth that has no future at all if their brother Ender fails.<br /><br />Source: hatrack.com",
            imageURL: URL(
                string: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1408303130l/375802._SY160_.jpg"
            ),
            similarBookIDs: ["44767458",
                             "386162",
                             "5907",
                             "29579",
                             "18007564",
                             "9969571",
                             "40961427",
                             "13496",
                             "3",
                             "13079982",
                             "34",
                             "113436",
                             "3636",
                             "2767052",
                             "36402034",
                             "5129",
                             "40604658",
                             "99219"]
        )

    }

    // MARK: -

    enum SearchBooks {

        // MARK: - Properties

        static let regular = ["375802",
                              "44687",
                              "6393082",
                              "34368113",
                              "44660",
                              "7025086",
                              "35010791",
                              "22874150",
                              "18879",
                              "24611928",
                              "34963329",
                              "42372731",
                              "30985221",
                              "33144572",
                              "39947220",
                              "13586977",
                              "9736",
                              "9735",
                              "46125032",
                              "35623296"]
    }

}
