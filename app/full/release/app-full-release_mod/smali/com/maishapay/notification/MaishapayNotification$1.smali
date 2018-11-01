.class Lcom/maishapay/notification/MaishapayNotification$1;
.super Ljava/lang/Object;
.source "MaishapayNotification.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/notification/MaishapayNotification;->readFrom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/maishapay/notification/MaishapayNotification;

.field final synthetic val$notificationReference:Lcom/google/firebase/database/DatabaseReference;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    const-class v0, Lcom/maishapay/notification/MaishapayNotification;

    return-void
.end method

.method constructor <init>(Lcom/maishapay/notification/MaishapayNotification;Lcom/google/firebase/database/DatabaseReference;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/maishapay/notification/MaishapayNotification$1;->this$0:Lcom/maishapay/notification/MaishapayNotification;

    iput-object p2, p0, Lcom/maishapay/notification/MaishapayNotification$1;->val$notificationReference:Lcom/google/firebase/database/DatabaseReference;

    iput-object p3, p0, Lcom/maishapay/notification/MaishapayNotification$1;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 3
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Notification"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 5
    .param p1    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Notification"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DataSnapshot;

    .line 112
    const-class v1, Lcom/maishapay/notification/model/NotificationBean;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/maishapay/notification/model/NotificationBean;

    .line 115
    iget-object v2, p0, Lcom/maishapay/notification/MaishapayNotification$1;->this$0:Lcom/maishapay/notification/MaishapayNotification;

    invoke-virtual {v1}, Lcom/maishapay/notification/model/NotificationBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/maishapay/notification/model/NotificationBean;->getBody()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/maishapay/notification/MaishapayNotification$1;->this$0:Lcom/maishapay/notification/MaishapayNotification;

    invoke-static {v4}, Lcom/maishapay/notification/MaishapayNotification;->access$000(Lcom/maishapay/notification/MaishapayNotification;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/maishapay/notification/MaishapayNotification;->access$100(Lcom/maishapay/notification/MaishapayNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 117
    iget-object v1, p0, Lcom/maishapay/notification/MaishapayNotification$1;->val$notificationReference:Lcom/google/firebase/database/DatabaseReference;

    iget-object v2, p0, Lcom/maishapay/notification/MaishapayNotification$1;->val$phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_0
    return-void
.end method
