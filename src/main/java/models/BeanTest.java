package models;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;

public class BeanTest {
    public static void main(String[] args) {

        String[] authorArray = {
            "Maya Angelou",
            "Ernest Hemingway",
            "Virginia Woolf",
            "Jane Austen",
            "Mark Twain",
            "Toni Morrison",
            "Oscar Wilde",
            "Margaret Atwood",
            "F. Scott Fitzgerald",
            "J.K. Rowling",
            "Edgar Poe",
            "Zora Hurston",
            "James Baldwin",
            "Gabriel Márquez",
            "Charlotte Bronte",
            "Haruki Murakami",
            "Alice Walker",
            "Albert Camus",
            "David Wallace",
            "Sylvia Plath"
        };

        String[] quotesArray = {
            "I've learned that people will forget what you said, people will forget what you did, but people will never forget " +
            "how you made them feel.",
            "The world breaks everyone, and afterward, some are strong at the broken places.",
            "Lock up your libraries if you like; but there is no gate, no lock, no bolt that you can set upon the freedom of my mind.",
            "I have not the pleasure of understanding you.",
            "The man who does not read good books has no advantage over the man who cannot read them.",
            "If there's a book that you want to read, but it hasn't been written yet, then you must write it.",
            "Be yourself; everyone else is already taken.",
            "A word after a word after a word is power.",
            "I hope you live a life you're proud of. If you find that you're not, I hope you have the strength to start all over again.",
            "It is our choices, Harry, that show what we truly are, far more than our abilities.",
            "I became insane, with long intervals of horrible sanity.",
            "Research is formalized curiosity. It is poking and prying with a purpose.",
            "Not everything that is faced can be changed, but nothing can be changed until it is faced.",
            "What matters in life is not what happens to you but what you remember and how you remember it.",
            "I am no bird; and no net ensnares me: I am a free human being with an independent will.",
            "If you only read the books that everyone else is reading, you can only think what everyone else is thinking.",
            "The most common way people give up their power is by thinking they don't have any.",
            "In the depth of winter, I finally learned that within me there lay an invincible summer.",
            "The truth will set you free. But not until it is finished with you.",
            "I desire the things that will destroy me in the end."
        };

        ArrayList<Quote> quotes = new ArrayList<>();
        for (int i = 0; i < authorArray.length; i++) {
            quotes.add(new Quote(new Author(authorArray[i]), quotesArray[i]));
        }

        for (Quote said: quotes) {
            System.out.println(said.getAuthor().getName() + "\n" + "     " + said.getContent());
        }

    }
}