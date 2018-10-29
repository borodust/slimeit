(cl:in-package :fistmage.game)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass language-state ()
  ((started-at :initform (real-time-seconds))))


(defmethod initialize-instance :after ((this language-state) &key)
  (bind-button :R :pressed
               (lambda ()
		 (setf *language* 1)
                 ))
  (bind-button :E :pressed
               (lambda ()
		 (setf *language* 2)
                 ))
  )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter *key1* nil)
(defparameter *key2* nil)
(defparameter *key3* nil)
(defparameter *key4* nil)
(defparameter *key5* nil)
(defparameter *key5-2* nil)
(defparameter *key6* nil)
(defparameter *key7* nil)
(defparameter *key8* nil)
(defparameter *key9* nil)
(defparameter *key10* nil)
(defparameter *key10-2* nil)
(defparameter *key11* nil)
(defparameter *key12* nil)
(defparameter *key13* nil)
(defparameter *key14* nil)
(defparameter *key15* nil)
(defparameter *key16* nil)
(defparameter *key16-2* nil)
(defparameter *key17* nil)
(defparameter *key18* nil)
(defparameter *key19* nil)
(defparameter *key20* nil)
(defparameter *key21* nil)
(defparameter *key22* nil)
(defparameter *key23* nil)
(defparameter *key24* nil)
(defparameter *key24-2* nil)
(defparameter *key25* nil)
(defparameter *key26* nil)
(defparameter *key27* nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun localization ()
  (if (= *language* 1)
      (and 
	     (setf *key1* "Ты тут впервые? Нажми на пробел, и ты впутаешься в эту историю.")
		 (setf *key2* "Меня зовут Кошка. И у меня есть проблема.")
		 (setf *key3* "Ты мог этого не заметить, но... Я немного слизень.")
		 (setf *key4* "Проблема же заключается... Ну... Просто посмотри на эту игру.")
		 (setf *key5* "Давай, нажми на пробел, а я отойду...")
		 (setf *key5-2* "Не хочу на это смотреть.")
		 (setf *key6* "Ну, такова теория. Давай, нажми на пробел, а я отойду... Не хочу на это смотреть.")
		 (setf *key7* "Теперь ты понимаешь? Я просто не могла это сделать. Я ПРИЛИПАЛА каждый раз.")
		 (setf *key8* "Снова и снова. Каждый раз. Постоянно.")
		 (setf *key9* "И вот тогда я поняла, что мечта моя недостижима.")
		 (setf *key10* "Я начала искать... утешение.")
		 (setf *key10-2* "Хотя тогда я еще не знала, что вообще что-то ищу.")
		 (setf *key11* "И в тот момент, когда тьма уже окружила меня, явилась она.")
		 (setf *key12* "Изящной тенью с божественной грацией она прошла мимо.")
		 (setf *key13* "Кошка вскочила на столик и улеглась в круглую стеклянную вазу.")
		 (setf *key14* "В этот же момент мне стал очевиден тезис, что кошки - это жидкость.")
		 (setf *key15* "Кажется, я нашла решение моей проблемы.")
		 (setf *key16* "Управляй платформой клавишами A и D,")
		 (setf *key16-2* "не дай шарику (это обновленная я!) упасть.")
		 (setf *key17* "Попробуй еще раз, это несложно!")
		 (setf *key18* "Наконец-то я сделала это. Но после выигрыша я опять вернулась в свою невзрачную форму. Моя кошка кончилась.")
		 (setf *key19* "Пришлось найти еще одну.")
		 (setf *key20* "Вторая кошка тоже мне помогла. Хотя я ее уже почти не помню.")
		 (setf *key21* "Ну же, сыграй еще раз.")
		 (setf *key22* "Кажется, кошки становятся моим личным сортом героина.")
		 (setf *key23* "663 кошки спустя...")
		 (setf *key24* "В какой-то момент я поняла, что кошки становятся моей сущностью.")
		 (setf *key24-2* "'Ты то, что ты ешь.' Это абсолютная правда.")
		 (setf *key25* "Я взяла себе это имя. Кошка. Думаю, я заслужила его.")
		 (setf *key26* "Теперь ты знаешь мою историю и должен понять, что я не могу тебя отпустить...")
		 (setf *key27* "Котик...")
	  ))
	  (if (= *language* 2)
      (and 
	     (setf *key1* "First time around? Press space and dive into the story.")
		 (setf *key2* "I'm Cat. I'm in little trouble.")
		 (setf *key3* "Maybe you haven't notice, but I'm a little bit a... slime.")
		 (setf *key4* "The problem is... Well... Look at this game.")
		 (setf *key5* "Go on, press space. But first I'll turn away --")
		 (setf *key5-2* "I don't want to watch this again.")
		 (setf *key6* "That's the theory. Go on, press space. But first I'll turn away -- I don't want to watch this again.")
		 (setf *key7* "Do you get it now? I couldn't do it! I stuck every time.")
		 (setf *key8* "Again and again. Every time. Always.")
		 (setf *key9* "It's become clear for me, my dream will never come true.")
		 (setf *key10* "I've started to look for something. I didn't know ")
		 (setf *key10-2* "what exactly I was looking for. A relief? Maybe...")
		 (setf *key11* "When the darkness surrounded me, she appeared.")
		 (setf *key12* "She passed by, walking gracefully, like a shadow.")
		 (setf *key13* "A cat jumped up on the table and lied down in the round vase.")
		 (setf *key14* "It became clear to me. Cats ARE liquid.")
		 (setf *key15* "I think I found a solution to my problem.")
		 (setf *key16* "Move platform with A and D keys.")
		 (setf *key16-2* "Don't let the ball (it's renewed me) fall.")
		 (setf *key17* "Try one more time. It's not that hard!")
		 (setf *key18* "Finally I made it! After victory i've returned to my old pale state. I ran out of my cat.")
		 (setf *key19* "Had to find one more.")
		 (setf *key20* "The second cat helped me a lot. But I don't really remember it.")
		 (setf *key21* "Come on! Play one more time!")
		 (setf *key22* "Cats became my own kind of drug.")
		 (setf *key23* "663 cats later...")
		 (setf *key24* "At one moment I realised -- cats became a part of me.")
		 (setf *key24-2* "You are what you eat.")
		 (setf *key25* "I took the name Cat. I think, I owned it.")
		 (setf *key26* "Now when you know my story, you must understand, I can't let you go.")
		 (setf *key27* "Kitty")
	  )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod fistmage:act ((this language-state))
  (with-slots (started-at) this
  (if (or (= *language* 1) (= *language* 2))
      (fistmage:transition-to 'cut2-state)
      )
  ))


(defmethod fistmage:draw ((this language-state))
  (with-slots (started-at) this
    (localization)
    (draw-rect (vec2 0 0) 1024 768 :fill-paint (vec4 0 0 0 1))
    (draw-text "Press E for English or R for Russian" (vec2 170 400)
               :fill-color (vec4 0 0.8 0 1)
               :font *language-font*
               )
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

