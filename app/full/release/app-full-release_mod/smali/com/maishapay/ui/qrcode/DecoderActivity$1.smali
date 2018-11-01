.class Lcom/maishapay/ui/qrcode/DecoderActivity$1;
.super Ljava/lang/Object;
.source "DecoderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/qrcode/DecoderActivity;->requestCameraPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/qrcode/DecoderActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/qrcode/DecoderActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/maishapay/ui/qrcode/DecoderActivity$1;->this$0:Lcom/maishapay/ui/qrcode/DecoderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 99
    iget-object p1, p0, Lcom/maishapay/ui/qrcode/DecoderActivity$1;->this$0:Lcom/maishapay/ui/qrcode/DecoderActivity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
