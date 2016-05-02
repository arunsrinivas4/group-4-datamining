<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="all" />
    <title>webuybooks</title>
    <style>
        li {
        display: inline;
        margin-right: 30px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    
        <img src="Images\Books.jpg" alt="Books" style="width: 100%; height: 184px" />
        <section>
            <nav>
                <ul>
                    <li><a href="FAQ.aspx" >FAQ</a></li>
                    <li><a href="Contact.aspx">Contact Us</a></li>
                    <li><a href="#"  id="Your_account">Your Account</a></li>
                    <li><a href="#" id="what_you_sold">What You Sold</a></li>
                    <li><a href="Register.aspx" >Register</a></li>
                    <li><a href="Default.aspx">Login</a></li>
                </ul>
            </nav>
        </section>
		<div>
			<b>FAQ</b>
			<p>Below are some of our frequently asked questions.If you still can not find an answer you are looking for please <a href="Contact.aspx">contact us!</a>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;"><a href="#h1">ISBN</a></font>
			</div>
			<div id="bullets">
			<ul>
				<li style="display:list-item;">
				<a href="#ISBN-1">What is an ISBN?</a>
				</li>
				<li style="display:list-item;">
				<a href="#ISBN-2">Where can I find the ISBN of my book?</a>
				</li>
				<li style="display:list-item;">
				<a href="#ISBN-3">What does an ISBN look like?</a>
				</li>
				<li style="display:list-item;">
				<a href="#ISBN-4">Do you buy books without ISBNs?</a>
				</li>
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;"><a href="#h2">Types of Books</a></font>
			</div>
			<div id="Div1">
			<ul>
				<li style="display:list-item;">
				<a href="#S2-q1">What types of books do you buy?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S2-q2">What types of books do you NOT buy?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S2-q3">Do you buy items marked Not for Resale?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S2-q4">Will you buy large quantities of books?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S2-q5">Will you buy several copies of a given book?</a>
				</li>
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;"><a href="#h3">Book Condition</a></font>
			</div>
			<div id="Div2">
			<ul>
				<li style="display:list-item;">
				<a href="#S3-q1">What sort of physical condition should the books be in?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S3-q2">What happens if you do not accept one or more of my books?</a>
				</li>				
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;"><a href="#h4">Getting Paid</a></font>
			</div>
			<div id="Div3">
			<ul>
				<li style="display:list-item;">
				<a href="#S4-q1">When and how do I get paid?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S4-q2">How long does it take to get paid?</a>
				</li>				
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;"><a href="#h5">Shipping</a></font>
			</div>
			<div id="Div4">
			<ul>
				<li style="display:list-item;">
				<a href="#S5-q1">Who pays for Shipping?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S5-q2">What if I want to ship my items through a different carrier?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S5-q3">Q: Should I pay for insurance on my package of books?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S5-q4">What happens if I don't include some of the books on the packing slip?</a>
				</li>
				<li style="display:list-item;">
				<a href="#S5-q5">What happens if you don't receive my books?</a>
				</li>
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;" id="h1"><b><u>ISBN</u></b></a></font>
			</div>
			<div id="Div5">
			<ul>
				<li id="ISBN-1"style="display:list-item;">
				What is an ISBN?
				</li>
				<b>Ans:</b>ISBN is an abbreviation for “International Standard Book Number”. It's the standardized identification system for books and other media.
				<li id="ISBN-2" style="display:list-item;">
				Where can I find the ISBN of my book?
				</li>
				<b>Ans:</b>Publishers typically puts the ISBN on the back cover of the book, usually above or near the barcode. They are also shown on the copyright information page within the first few pages of the book. If the item is a single volume and part of a set, this would be a good place to look, as it shows the ISBN of each volume.
				<li id="ISBN-3"style="display:list-item;">
				What does an ISBN look like?
				</li>
				<b>Ans:</b>Usually the letters ISBN will be printed followed by a number with sections separated by hyphens, e.g. ISBN 0-89123-145-2
				<li  id="ISBN-4"style="display:list-item;">
				Do you buy books without ISBNs?
				</li>
				<b>Ans:</b>We do not buy books without ISBNs, as it is generally difficult to determine a price for the item.
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;" id="h2"><b><u>Types of Books</b></u></font>
			</div>
			<div id="Div6">
			<ul>
				<li id="S2-q1" style="display:list-item;">
				What types of books do you buy?
				<b>Ans:</b> We buy books that meet our condition standards, are available for resale and have at least a little market value. Our pricing page will tell you whether we are buying a specific book once you've entered the ISBN. Items that we typically do not buy are: Older books, books without ISBNs, encyclopedia sets, magazines, music books, comic books, books that are marked as “not for resale,” books that are in poor condition, outdated text books, etc.
				<li  id="S2-q2"style="display:list-item;">
				What types of books do you NOT buy?
				</li>
				<b>Ans:</b>We do not buy
				<ul>
					<li style="display:list-item;">
						International Edition Textbooks
					</li>
					<li style="display:list-item;">
						Instructor Edition Textbooks
					</li>
					<li style="display:list-item;">
						Examination copies
					</li>
					<li style="display:list-item;">
						Teacher's Edition
					</li>
					<li style="display:list-item;">
						Advanced Readers Copy (ARC)
					</li>
					<li style="display:list-item;">
						Items without an ISBN printed on the book
					</li>
					<li style="display:list-item;">
						Items that are sexually explicit and/or offensive
					</li>
					<li style="display:list-item;">
						Non book items such as Calendars and board games (even though they may have an ISBN)
					</li>
					<li style="display:list-item;">
						Encyclopedia Sets
					</li>
				</ul>	
				<li id="S2-q3" style="display:list-item;">
				Do you buy items marked Not for Resale?
				</li>
				<b>Ans:</b> No we do not buy any items marked not for resale, for example, but not limited to advanced readers copies, international editions, instructors editions, and examination copies. This information is often hidden by heavy use of tape and stickers, so be cautious. They will be rejected upon arrival.
				<li  id="S2-q4"style="display:list-item;">
				Will you buy large quantities of books?
				</li>
				<b>Ans:</b> We do buy books in bulk. Please contact us about letting us know the books that you have and amount you are interested in selling. Include the ISBN of each title and quantity of each title - if you could put the information into a table such as Microsoft Excel (MS Excel 2007 or earlier) that would be appreciated. We will let you know if we are willing to buy the items and how many.
				<li id="S2-q5"style="display:list-item;">
				Will you buy several copies of a given book?
				</li>
				<b>Ans:</b> We do buy multiple copies of the same book. How many depends on the demands of our buyers. If you have more than one copy of any book, please email us to see if we are buying them and how many. Include in the email the title, the ISBN and the quantity of each title. Also, if you already have an order number created, include that as well.
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;" id="h3"><b><u>Book Condition</b></u></font>
			</div>
			<div id="Div7">
			<ul>
				<li id="S3-q1" style="display:list-item;">
				What sort of physical condition should the books be in?
				</li>
				<b>Ans:</b> Books must be in very good condition which means that books must meet the following criteria: 							
				<ul>
					<li style="display:list-item;">
						No tears and minimal wear to the cover, or pages.
					</li>
					<li style="display:list-item;">
						Corners of covers should not be bent, dented or frayed
					</li>
					<li style="display:list-item;">
						Examination copies
					</li>
					<li style="display:list-item;">
						Minimal wear to the binding - pages should be firmly attached to the binding - bindings cannot be broken
					</li>
					<li style="display:list-item;">
						A small amount of writing, underlining or highlighting of pages is okay, as long as it is on fewer than 30% of the book's pages. However, workbooks and study guides must be clean and unwritten in (no answers filled in already)
					</li>
					<li style="display:list-item;">
						No missing pages
					</li>
					<li style="display:list-item;">
						No liquid damage – warped, wavy pages are a sign of liquid damage
					</li>
					<li style="display:list-item;">
						Non book items such as Calendars and board games (even though they may have an ISBN)
					</li>
					<li style="display:list-item;">
						No fire or smoke damage
					</li>
					<li style="display:list-item;">
						No strong odor of any kind (including musty or cigarette odor, for example)
					</li>
					<li style="display:list-item;">
						If book originally came with a CD-Rom, the original CD-Rom must accompany the book when shipped to us. The CD must be in working condition
					</li>
					<li style="display:list-item;">
						No advance reading copies, uncorrected proofs, and/or promotional or screener copies of books
					</li>
					<li style="display:list-item;">
						No partial sets (ie, only sending volume 1 of a 2 volume set). Please make sure you use the correct ISBN if it is a single volume and/or full set! This is a common error!
					</li>
					<li style="display:list-item;">
						No items with the access code exposed. This includes standalone items (for example an item that is an access code for online class like Mathlab) as well as items which include a supplementary access code (for example a textbook packaged with an associated access code for an accompanying online class).
					</li>
				</ul>
				Items we receive that do not meet these requirements are not eligible for payment. The quote will be deducted from the total amount - so please make good judgment when assessing your items and please pack your books carefully. 
				<li id="S3-q2"  style="display:list-item;">
				What happens if you do not accept one or more of my books?
				</li>
				<b>Ans:</b>We will inform you immediately of any issues via email. Issues will put your payment on hold until they are resolved by your response. We will either recycle the item and deduct the quote from the total, or send the item(s) back for a return processing fee of $3.99. This fee can be deducted directly from your total quote, or sent via PayPal.
				<br />
				To ensure that books are not damaged please follow these guidelines:
				<ul>
					<li style="display:list-item;">
						Use a sturdy box. Thin boxes (e.g., cereal boxes) may not protect your books in shipment.
					</li>
					<li style="display:list-item;">
						Do not use packing peanuts for packing material. Packing peanuts shift during transit, damage pages and often become crushed by the weight of the books during shipment! A large amount of shipments we've received using packing peanuts result in several damaged books.
					</li>
					<li style="display:list-item;">
						Choose the right size of box. Huge boxes of books nearly always result in damaged books
					</li>
					<li style="display:list-item;">
						Keep the weight of each box and books under 35lbs. Heavy boxes nearly always result in damaged books
					</li>
					<li style="display:list-item;">
						Use wadded up newspaper to fill gaps. Newspaper can be wadded up tightly and provide protection
					</li>
					
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;" id="h4"><b><u>Getting Paid</b></u></font>
			</div>
			<div id="Div8">
			<ul>
				<li id="S4-q1" style="display:list-item;">
				When and how do I get paid?
				</li>
				<b>Ans:</b> When we receive the box of books and confirm its contents against the order, we process your payment in our next PayPal or check run (usually within 2 business days after the order is processed)
				<li id="S4-q2" style="display:list-item;">
				How long does it take to get paid?
				</li>				
				<b>Ans:</b> Since we are unable to pay you until we receive your items, the real variable in the amount of time to get paid is the transit times. If you choose to ship using our FedEx Service we will receive your items in 2-5 days. If you choose the USPS media mail option we will receive your items in 7-21 days. We attempt to check in all books within two business days of arrival, although this may take longer depending on the number of orders we receive at any given time. For quickest payment use PayPal! 
			</ul>
			</div>
		</div>
		<div >
			<div>
					<font style="align:left; font-size:26px;" id="h5"><b><u>Shipping</b></u></font>
			</div>
			<div id="Div9">
			<ul>
				<li id="S5-q1"style="display:list-item;">
				Who pays for Shipping?
				</li>
				 <b>Ans:</b> Shipping is always 100% free when you use one the shipping label provided after checkout!
				<li id="S5-q2" style="display:list-item;">
				What if I want to ship my items through a different carrier?
				</li>
				<b>Ans:</b> We will gladly accept your packages no matter how you decide to ship them to us. However if you decide not to use our free shipping label, you will be responsible for the shipping costs.
				<li id="S5-q3"style="display:list-item;">
				 Should I pay for insurance on my package of books?
				</li>
				<b>Ans:</b> Insurance is included with our pre-paid shipping label up to $100 dollars.
				<li id="S5-q4" style="display:list-item;">
				What happens if I don't include some of the books on the packing slip?
				</li>
				<b>Ans:</b> We'll contact you via email to confirm that the books were not shipped. If you purchased insurance and your package is missing books we will work with you to recover the cost of the books from the postal service. Only the sender of items (in this case, you) can recover the cost from the postal service. We will help you by providing an accurate accounting of the value.
				<li id="S5-q5"style="display:list-item;">
				What happens if you don't receive my books?
				</li>
				<b>Ans:</b> If we can verify that you shipped out the items and you used our Free label - we will file a claim on your behalf with the shipping carrier. 
				
			</ul>
			</div>
		</div>
</form>
</body>
</html>
