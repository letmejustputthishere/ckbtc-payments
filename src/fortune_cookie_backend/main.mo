import Result "mo:base/Result";
import Time "mo:base/Time";
import Int "mo:base/Int";
import CkBtcLedger "canister:ckbtc_ledger";
import Types "./types";
import { toAccount } "./utils";
import Principal "mo:base/Principal";

actor FortuneCookie {
  let cookies = [
    "A journey of a thousand miles begins with a single step.",
    "Your greatest fortune is the friends you keep.",
    "Good things come to those who wait.",
    "The best way to predict the future is to create it.",
    "Opportunity knocks on your door every day. Be ready to answer.",
    "Success is the sum of small efforts repeated day in and day out.",
    "Believe in yourself, and others will too.",
    "A smile is the universal language of kindness.",
    "Your dreams are within reach. Pursue them with passion.",
    "Kindness is a gift that keeps on giving.",
    "Patience is the key to unlocking life's greatest treasures.",
    "Fortune favors the bold.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "The greatest risk is not taking any risks at all.",
    "Your positive attitude will lead to positive outcomes.",
    "In every ending, there is a new beginning.",
    "Happiness is not a destination, but a way of life.",
    "Success is not measured by wealth, but by the impact you make on others.",
    "Embrace change, for it leads to growth.",
    "The best lessons are learned from mistakes.",
    "Your creative ideas will lead to great achievements.",
    "The secret to happiness is to count your blessings.",
    "Love and laughter are the keys to a joyful heart.",
    "Success comes to those who work for it.",
    "You have the power to make a difference in the world.",
    "Cherish the present moment, for it is a gift.",
    "Persistence and determination will bring you closer to your goals.",
    "A kind word can change someone's entire day.",
    "The only limit is the one you set for yourself.",
    "Take the road less traveled, and you will discover new horizons.",
    "Your greatest strength lies within you.",
    "Luck is what happens when preparation meets opportunity.",
    "Every setback is a setup for a comeback.",
    "A grateful heart attracts abundance.",
    "The best is yet to come.",
    "The harder you work, the luckier you get.",
    "Life is a beautiful journey. Enjoy every step.",
    "Your passion will lead you to success.",
    "Every problem has a solution. Keep a positive mindset.",
    "Wisdom is knowing what to do; virtue is doing it.",
    "You are capable of achieving great things.",
    "A kind gesture can change someone's entire day.",
    "Great things take time. Be patient.",
    "Believe in yourself, and others will believe in you.",
    "Your generosity will be rewarded tenfold.",
    "Keep your face always toward the sunshine, and shadows will fall behind you.",
    "Success is not just about reaching the destination, but enjoying the journey.",
    "An open mind is an opportunity magnet.",
    "The world is full of endless possibilities. Embrace them.",
    "Your potential is limitless. Believe in yourself and aim high.",
  ];

  public func getCookie() : async Result.Result<Text, Text> {
    return #ok("🥠: " # cookies[Int.abs(Time.now() / 1000 % 50)]);
  };

  public shared ({ caller }) func getInvoice() : async Types.Account {
    toAccount(caller, Principal.fromActor(FortuneCookie));
  };
};
