// Function: formattedDateTime()
const formattedDateTime = (datetime) => {
    return new Date(datetime).toLocaleString('en-US', { weekday: 'long', day: 'numeric', month: 'long', year: 'numeric', hour: 'numeric', minute: 'numeric', second: 'numeric', hour12: true })
}

// Function: setFocusToMessageInput
const setFocusToMessageInput = () => {
    document.getElementById("messageInput").focus()
}

// Function: autoScrollBottom()
const autoScrollBottom = (refElement) => {
    refElement.scrollTop = refElement.offsetHeight
}

// Function: sendMessage()
const sendMessage = (refMessageInput, refMessageContainer, datetime) => {
    // যদি মেসেজ ইনপুট খালি না হয় (অন্য কোন character ছাড়া এক বা একাধিক \n বা newline পাওয়া যায়) এরূপ ক্ষেত্রে regex সত্য হলে
    if (refMessageInput.value.match(/[^\n]+/gm)) {
        // মেসেজ ইনপুটের মান নেওয়া হচ্ছে, সবগুলো \n to "<br/>" replacing এবং '' trim করা সহ
        const messageText = refMessageInput.value.replaceAll("\n", "<br>").trim();
        // নতুন মেসেজ এলিমেন্ট তৈরি করে মেসেজ টেক্সট সহ যোগ করা হচ্ছে
        const messageElement = document.createElement('div');
        messageElement.classList.add('message', 'outgoing');
        messageElement.title = `me at ${datetime}`
        messageElement.innerHTML = messageText;

        // মেসেজ এলিমেন্টটি মেসেজ কন্টেনারে যোগ করা হচ্ছে
        refMessageContainer.appendChild(messageElement);

        // মেসেজ ইনপুটের মান ফর্ম ক্লিয়ার করা হচ্ছে
        refMessageInput.value = '';
    }
    autoScrollBottom(document.getElementById("conversation"))

    // Input focus
    refMessageInput.focus()
}

// Function: sendLike()
const sendLike = (type, refMessageContainer, datetime) => {
    if (type === 'outgoing' || type === 'incomming') {
        // নতুন মেসেজ এলিমেন্ট তৈরি করে লাইক যুক্ত করা হচ্ছে
        const messageElement = document.createElement('div');
        messageElement.classList.add('message', 'like', type)
        messageElement.title = `me at ${datetime}`

        // মেসেজ এলিমেন্টটি মেসেজ কন্টেনারে যোগ করা হচ্ছে
        refMessageContainer.appendChild(messageElement);

        autoScrollBottom(document.getElementById("conversation"))

        setFocusToMessageInput()
    } else {
        console.error("Value of parameter: type must be `outgoing` or `incomming`.");
    }
}

document.addEventListener('DOMContentLoaded', () => {
    // Sidebar

    // চ্যাট লিস্ট এবং তার আইটেমগুলো নেওয়া হচ্ছে
    const chatList = document.querySelector("#chatList");
    const chatItems = chatList.querySelectorAll('li');

    // Automatically #chatList এর height সেট করা হচ্ছে + setFocusToMessageInput
    chatList.style.height = window.innerHeight - document.querySelector("hgroup").offsetHeight + 'px'
    setFocusToMessageInput()

    // চ্যাট আইটেমগুলোতে লুপ চালানো হচ্ছে
    chatItems.forEach(item => {
        // প্রতিটি আইটেমে ক্লিক ইভেন্ট লিস্টেনার যোগ করা হচ্ছে
        item.addEventListener('click', () => {
            // সব আইটেম থেকে 'active' ক্লাস মুছে ফেলা হচ্ছে
            chatItems.forEach(chatItem => chatItem.classList.remove('active'));

            // ক্লিক করা আইটেমে 'active' ক্লাস যোগ করা হচ্ছে
            item.classList.add('active');

            // নির্বাচিত ব্যবহারকারীর নামটি ব্যবহার করে চ্যাটবক্স হেডিং আপডেট করা হচ্ছে
            const chatboxHeading = document.querySelector('.chatbox h2');
            chatboxHeading.textContent = item.textContent;
        });
    });

    // .sidebar ul li থেকে সার্চ করার জন্য নোড গ্রহণ করা হচ্ছে
    const searchInput = document.querySelector('#searchInput');
    searchInput.addEventListener('keyup', (e) => {
        const searchTerm = e.target.value.toLowerCase();

        // চ্যাট আইটেমগুলি লুপ দিয়ে চেক করা হচ্ছে যে কোন আইটেমে খুঁজি মিলেছে কি না
        chatItems.forEach(chatItem => {
            const text = chatItem.textContent.toLowerCase();
            if (text.indexOf(searchTerm) > -1) {
                chatItem.style.display = 'block';
            } else {
                chatItem.style.display = 'none';
            }
        });
    });



    // Send and show messages

    // সেন্ড মেসেজ ফর্ম এবং এর ইনপুটগুলি নেওয়া হচ্ছে
    const sendMessageForm = document.querySelector('#sendMessageForm');
    const messageInput = sendMessageForm.querySelector('#messageInput');

    // চ্যাটবক্স এবং মেসেজ কন্টেনার নেওয়া হচ্ছে
    const chatbox = document.querySelector('.chatbox');
    const messageContainer = chatbox.querySelector('.conversation');



    // সেন্ড মেসেজ ফর্মে একটি সাবমিট ইভেন্ট লিস্টেনার যোগ করা হচ্ছে
    sendMessageForm.addEventListener('submit', event => {
        // ফর্মটি জমা দেয়ার এবং পৃষ্ঠাটি রিফ্রেশ করার বন্ধ করা হচ্ছে
        event.preventDefault();

        // sendMessage() execute হবে (১)
        sendMessage(messageInput, messageContainer, new Date())
    });

    // সেন্ড লাইক
    document.getElementById("btnLike").addEventListener('click', () => {
        sendLike('outgoing', messageContainer, new Date())
    })

    const keyPressed = new Array()

    const clearKeyPressedData = () => {
        /** clearKeyPressedData() হলো keyPressed এর সমস্ত ডেটা clear করার জন্য। মেমরিতে অব্যবহৃত ডেটা clear করে দেয়া একটি ভাল অভ্যাস। এতে মেমরির অপচয় রোধ হয়। */
        while (keyPressed.length !== 0) {
            keyPressed.pop()
        }
    }

    messageInput.addEventListener('keydown', (e) => {
        keyPressed.push(e.key)

        // Ctrl+Enter press করলে
        // সর্ব শেষে দুটি "Control" ও "Enter" value পেলে
        if (keyPressed[keyPressed.length - 2] === "Control" && keyPressed[keyPressed.length - 1] === "Enter") {
            messageInput.value += "\n"
            clearKeyPressedData()
        } else {
            // Enter press করলে
            // সর্ব শেষে "Enter" value পেলে
            if (keyPressed[keyPressed.length - 1] === "Enter") {
                // sendMessage() execute হবে (২)
                setTimeout(() => {
                    sendMessage(messageInput, messageContainer, new Date())
                });
                clearKeyPressedData()
            }
        }
    });
})