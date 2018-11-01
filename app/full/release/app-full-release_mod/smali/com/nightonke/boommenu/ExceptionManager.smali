.class Lcom/nightonke/boommenu/ExceptionManager;
.super Ljava/lang/Object;
.source "ExceptionManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static judge(Lcom/nightonke/boommenu/BoomMenuButton;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nightonke/boommenu/BoomMenuButton;",
            "Ljava/util/ArrayList<",
            "Lcom/nightonke/boommenu/BoomButtons/BoomButtonBuilder;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonEnum()Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonEnum()Lcom/nightonke/boommenu/ButtonEnum;

    move-result-object v0

    sget-object v1, Lcom/nightonke/boommenu/ButtonEnum;->Unknown:Lcom/nightonke/boommenu/ButtonEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/ButtonEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v0

    sget-object v1, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Unknown:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v0

    sget-object v1, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->Unknown:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getBoomEnum()Lcom/nightonke/boommenu/Animation/BoomEnum;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getBoomEnum()Lcom/nightonke/boommenu/Animation/BoomEnum;

    move-result-object v0

    sget-object v1, Lcom/nightonke/boommenu/Animation/BoomEnum;->Unknown:Lcom/nightonke/boommenu/Animation/BoomEnum;

    invoke-virtual {v0, v1}, Lcom/nightonke/boommenu/Animation/BoomEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_15

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 31
    :cond_4
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->pieceNumber()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->minPieceNumber()I

    move-result v1

    .line 33
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->maxPieceNumber()I

    move-result v2

    .line 34
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getCustomPiecePlacePositions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 36
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->buttonNumber()I

    move-result v4

    .line 37
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->minButtonNumber()I

    move-result v5

    .line 38
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->maxButtonNumber()I

    move-result v6

    .line 39
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getCustomButtonPlacePositions()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v8, -0x1

    if-ne v0, v8, :cond_8

    if-eq v4, v8, :cond_6

    if-gt v1, v4, :cond_5

    if-le v4, v2, :cond_6

    .line 47
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") of buttons of button-place-enum("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is not in the range(["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]) of the piece-place-enum("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-gt v1, p1, :cond_7

    if-le p1, v2, :cond_a

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The number of builders("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not in the range(["

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]) of the piece-place-enum("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eq v4, v8, :cond_a

    if-eq v0, v4, :cond_9

    .line 62
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of piece("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is not equal to buttons\'("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    if-eq v0, p1, :cond_a

    .line 66
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of piece("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is not equal to builders\'("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_a
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getPiecePlaceEnum()Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    move-result-object v9

    sget-object v10, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->Custom:Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;

    invoke-virtual {v9, v10}, Lcom/nightonke/boommenu/Piece/PiecePlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-gtz v3, :cond_b

    .line 74
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "When the positions of pieces are customized, the custom-piece-place-positions array is empty"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    if-ne v4, v8, :cond_d

    if-gt v5, v3, :cond_c

    if-le v3, v6, :cond_e

    .line 80
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "When the positions of pieces is customized, the length("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") of custom-piece-place-positions array is not in the range(["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    if-eq v3, v4, :cond_e

    .line 87
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The number of piece("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is not equal to buttons\'("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-eq v3, p1, :cond_f

    .line 92
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of piece("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not equal to builders\'("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_f
    invoke-virtual {p0}, Lcom/nightonke/boommenu/BoomMenuButton;->getButtonPlaceEnum()Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    move-result-object p0

    sget-object v3, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->Custom:Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;

    invoke-virtual {p0, v3}, Lcom/nightonke/boommenu/BoomButtons/ButtonPlaceEnum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    if-gtz v7, :cond_10

    .line 99
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "When the positions of buttons are customized, the custom-button-place-positions array is empty"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    if-ne v0, v8, :cond_12

    if-gt v1, v7, :cond_11

    if-le v7, v2, :cond_13

    .line 105
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "When the positions of buttons is customized, the length("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") of custom-button-place-positions array is not in the range(["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    if-eq v7, v0, :cond_13

    .line 112
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of button("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not equal to pieces\'("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    if-eq v7, p1, :cond_14

    .line 117
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of button("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not equal to builders\'("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    return-void

    .line 29
    :cond_15
    :goto_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Empty builders!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_16
    :goto_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown boom-enum!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_17
    :goto_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown button-place-enum!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_18
    :goto_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown piece-place-enum!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_19
    :goto_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown button-enum!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
