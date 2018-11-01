.class Lorg/alfonz/utility/Logcat$CodeLocation;
.super Ljava/lang/Object;
.source "Logcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alfonz/utility/Logcat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodeLocation"
.end annotation


# instance fields
.field private final mClassName:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mLineNumber:I

.field private final mMethod:Ljava/lang/String;

.field private final mThread:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/StackTraceElement;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 154
    aget-object p1, p1, v0

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mThread:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mFileName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mClassName:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mMethod:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    iput p1, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mLineNumber:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-static {}, Lorg/alfonz/utility/Logcat;->access$100()Lorg/alfonz/utility/Logcat$Config;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alfonz/utility/Logcat$Config;->isShowCodeLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x5b

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Lorg/alfonz/utility/Logcat;->access$100()Lorg/alfonz/utility/Logcat$Config;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alfonz/utility/Logcat$Config;->isShowCodeLocationThread()Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mThread:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {}, Lorg/alfonz/utility/Logcat;->access$100()Lorg/alfonz/utility/Logcat$Config;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alfonz/utility/Logcat$Config;->isShowCodeLocationLine()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x28

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    iget v1, p0, Lorg/alfonz/utility/Logcat$CodeLocation;->mLineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "] "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
