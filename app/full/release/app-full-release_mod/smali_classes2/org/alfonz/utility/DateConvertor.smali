.class public final Lorg/alfonz/utility/DateConvertor;
.super Ljava/lang/Object;
.source "DateConvertor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calendarToDate(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 0

    .line 38
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static calendarToString(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p0}, Lorg/alfonz/utility/DateConvertor;->calendarToDate(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object p0

    .line 48
    invoke-static {p0, p1}, Lorg/alfonz/utility/DateConvertor;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dateToCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static stringToCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lorg/alfonz/utility/DateConvertor;->stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lorg/alfonz/utility/DateConvertor;->dateToCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static stringToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    if-eqz p0, :cond_0

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
