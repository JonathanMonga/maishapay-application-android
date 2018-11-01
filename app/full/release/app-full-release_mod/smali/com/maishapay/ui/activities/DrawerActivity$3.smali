.class Lcom/maishapay/ui/activities/DrawerActivity$3;
.super Ljava/lang/Object;
.source "DrawerActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/maishapay/ui/activities/DrawerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/maishapay/ui/activities/DrawerActivity;


# direct methods
.method constructor <init>(Lcom/maishapay/ui/activities/DrawerActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 4

    .line 174
    iget-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    invoke-virtual {p1}, Lcom/maishapay/ui/activities/DrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-wide/16 v0, 0x190

    const p3, 0x7f090216

    const v2, 0x7f09012e

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return v3

    .line 240
    :pswitch_1
    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    const-string p3, "A propros"

    invoke-virtual {p2, p3}, Lcom/maishapay/ui/activities/DrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    new-instance p2, Lcom/maishapay/ui/fragment/AboutFragment;

    invoke-direct {p2}, Lcom/maishapay/ui/fragment/AboutFragment;-><init>()V

    .line 242
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return v3

    .line 234
    :pswitch_2
    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    const-string p3, "Nous contacter"

    invoke-virtual {p2, p3}, Lcom/maishapay/ui/activities/DrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    new-instance p2, Lcom/maishapay/ui/fragment/ContactFragment;

    invoke-direct {p2}, Lcom/maishapay/ui/fragment/ContactFragment;-><init>()V

    .line 236
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return v3

    .line 228
    :pswitch_3
    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    const-string p3, "Param\u00e8tres"

    invoke-virtual {p2, p3}, Lcom/maishapay/ui/activities/DrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    new-instance p2, Lcom/maishapay/ui/fragment/SettingsFragment;

    invoke-direct {p2}, Lcom/maishapay/ui/fragment/SettingsFragment;-><init>()V

    .line 230
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return v3

    .line 219
    :pswitch_4
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    .line 220
    invoke-virtual {p2, p3}, Lcom/maishapay/ui/activities/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string p2, "Cette fonctionnalit\u00e9 sera bient\u00f4t disponible!"

    .line 221
    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p1, v3}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return v3

    .line 211
    :pswitch_5
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    .line 212
    invoke-virtual {p2, p3}, Lcom/maishapay/ui/activities/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string p2, "Cette fonctionnalit\u00e9 sera bient\u00f4t disponible!"

    .line 213
    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 214
    invoke-virtual {p1, v3}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return v3

    .line 202
    :pswitch_6
    invoke-static {}, Lde/mateware/snacky/Snacky;->builder()Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    .line 203
    invoke-virtual {p2, p3}, Lcom/maishapay/ui/activities/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setView(Landroid/view/View;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    const-string p2, "Cette fonctionnalit\u00e9 sera bient\u00f4t disponible!"

    .line 204
    invoke-virtual {p1, p2}, Lde/mateware/snacky/Snacky$Builder;->setText(Ljava/lang/CharSequence;)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v3}, Lde/mateware/snacky/Snacky$Builder;->setDuration(I)Lde/mateware/snacky/Snacky$Builder;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lde/mateware/snacky/Snacky$Builder;->warning()Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    return v3

    .line 193
    :pswitch_7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/maishapay/ui/activities/DrawerActivity$3$2;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/activities/DrawerActivity$3$2;-><init>(Lcom/maishapay/ui/activities/DrawerActivity$3;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 184
    :pswitch_8
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/maishapay/ui/activities/DrawerActivity$3$1;

    invoke-direct {p2, p0}, Lcom/maishapay/ui/activities/DrawerActivity$3$1;-><init>(Lcom/maishapay/ui/activities/DrawerActivity$3;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3

    .line 178
    :pswitch_9
    iget-object p2, p0, Lcom/maishapay/ui/activities/DrawerActivity$3;->this$0:Lcom/maishapay/ui/activities/DrawerActivity;

    const-string p3, "Maishapay"

    invoke-virtual {p2, p3}, Lcom/maishapay/ui/activities/DrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    new-instance p2, Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-direct {p2}, Lcom/maishapay/ui/fragment/AccueilFragment;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
