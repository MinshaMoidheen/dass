import 'package:mentalhealth/models/question.dart';

final List<Question> questions = [
  Question(
    questionText: '1. I found it hard to wind down ',
    aspect: 'Stress',

    options: [
      {

        "value":0,
        "opt":"Did not apply to me at all"

      },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }

    ],

  ),
  Question(
    questionText: '2. I was aware of dryness of my mouth',
    aspect: 'Anxiety',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '3. I couldn’t seem to experience any positive feeling at all',
    aspect: 'Depression',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: "4. I experienced breathing difficulty (e.g. excessively rapid breathing,breathlessness in the absence of physical exertion)",
    aspect: 'Anxiety',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '5. I found it difficult to work up the initiative to do things',
    aspect: 'Depression',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '6. I tended to over-react to situations ',
    aspect: 'Stress',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '7. I experienced trembling (e.g. in the hands)',
    aspect: 'Anxiety',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '8. I felt that I was using a lot of nervous energy ',
    aspect: 'Stress',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '9. I was worried about situations in which I might panic and make a fool of myself',
    aspect: 'Anxiety',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '10. I felt that I had nothing to look forward to',
    aspect: 'Depression',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '11. I found myself getting agitated ',
    aspect: 'Stress',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '12. I found it difficult to relax',
    aspect: 'Stress',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '13. I felt down-hearted and blue',
    aspect: 'Depression',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '14. I was intolerant of anything that kept me from getting on with what I was doing',
    aspect: 'Stress',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '15. I felt I was close to panic',
    aspect: 'Anxiety',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '16. I was unable to become enthusiastic about anything ',
    aspect: 'Depression',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '17. I felt I wasn’t worth much as a person ',
    aspect: 'Depression',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '18. I felt that I was rather touchy',
    aspect: 'Stress',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '19. I was aware of the action of my heart in the absence of physical exertion (e.g. sense of heart rate increase, heart missing a beat) ',
    aspect: 'Anxiety',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '20. I felt scared without any good reason',
    aspect: 'Anxiety',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  Question(
    questionText: '21. I felt that life was meaningless',
    aspect: 'Depression',
    options: [{

      "value":0,
      "opt":"Did not apply to me at all"

    },


      {

        "value":1,
        "opt":"Applied to me to some degree, or some of the time"

      }
      ,

      {

        "value":2,
        "opt":"Applied to me to a considerable degree or a good part of time"

      },
      {

        "value":3,
        "opt":"Applied to me very much or most of the time"

      }],
  ),
  // Add more questions here...
];