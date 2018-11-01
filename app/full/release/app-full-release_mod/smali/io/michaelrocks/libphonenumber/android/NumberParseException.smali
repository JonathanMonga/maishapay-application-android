.class public Lio/michaelrocks/libphonenumber/android/NumberParseException;
.super Ljava/lang/Exception;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;
    }
.end annotation


# instance fields
.field private errorType:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/NumberParseException;->message:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/NumberParseException;->errorType:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    return-void
.end method


# virtual methods
.method public getErrorType()Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/NumberParseException;->errorType:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/NumberParseException;->errorType:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/NumberParseException;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
