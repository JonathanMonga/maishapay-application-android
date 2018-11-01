.class public Lcom/maishapay/ui/activities/DrawerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DrawerActivity.java"


# instance fields
.field private result:Lcom/mikepenz/materialdrawer/Drawer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    return-void
.end method

.method public static setWindowFlag(Landroid/app/Activity;IZ)V
    .locals 1

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 256
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 258
    :cond_0
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 260
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 276
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    goto :goto_0

    .line 270
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001e

    .line 51
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/DrawerActivity;->setContentView(I)V

    const v0, 0x7f090263

    .line 54
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/DrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 55
    invoke-virtual {p0, v0}, Lcom/maishapay/ui/activities/DrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 57
    invoke-static {p0}, Lcom/maishapay/model/prefs/UserPrefencesManager;->getCurrentUser(Landroid/content/Context;)Lcom/maishapay/model/client/response/UserResponse;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/maishapay/model/client/response/UserResponse;->getPrenom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/maishapay/model/client/response/UserResponse;->getNom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;->withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;

    move-result-object v2

    invoke-virtual {v1}, Lcom/maishapay/model/client/response/UserResponse;->getTelephone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;->withEmail(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;

    move-result-object v1

    const v2, 0x7f08031f

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;->withIcon(I)Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mikepenz/materialdrawer/model/ProfileDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    .line 63
    new-instance v4, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    invoke-direct {v4}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;-><init>()V

    const/4 v5, -0x1

    .line 64
    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->withTextColor(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-result-object v4

    .line 65
    invoke-virtual {v4, p0}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-result-object v4

    const v5, 0x7f080084

    .line 66
    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->withHeaderBackground(I)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 67
    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->withTranslucentStatusBar(Z)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    new-instance v1, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;-><init>()V

    const-string v9, "Modifier votre profil"

    .line 70
    invoke-virtual {v1, v9}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withName(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object v1

    sget-object v9, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_settings:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v1, v9}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;

    move-result-object v1

    new-instance v9, Lcom/maishapay/ui/activities/DrawerActivity$1;

    invoke-direct {v9, p0}, Lcom/maishapay/ui/activities/DrawerActivity$1;-><init>(Lcom/maishapay/ui/activities/DrawerActivity;)V

    invoke-virtual {v1, v9}, Lcom/mikepenz/materialdrawer/model/ProfileSettingDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;

    aput-object v1, v7, v5

    .line 68
    invoke-virtual {v4, v7}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->addProfiles([Lcom/mikepenz/materialdrawer/model/interfaces/IProfile;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, p1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->withSavedInstance(Landroid/os/Bundle;)Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/mikepenz/materialdrawer/AccountHeaderBuilder;->build()Lcom/mikepenz/materialdrawer/AccountHeader;

    move-result-object v1

    .line 86
    new-instance v4, Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-direct {v4}, Lcom/mikepenz/materialdrawer/DrawerBuilder;-><init>()V

    .line 87
    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withSelectedItemByPosition(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v4

    .line 88
    invoke-virtual {v4, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withSavedInstance(Landroid/os/Bundle;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v4

    .line 89
    invoke-virtual {v4, v8}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withDisplayBelowStatusBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v4

    .line 90
    invoke-virtual {v4, v8}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withTranslucentStatusBar(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withShowDrawerOnFirstLaunch(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v4

    .line 92
    invoke-virtual {v4, p0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v4

    .line 93
    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withHasStableIds(Z)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v4

    .line 94
    invoke-virtual {v4, v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withToolbar(Landroid/support/v7/widget/Toolbar;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v4, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v7, "Accueil"

    .line 97
    invoke-virtual {v4, v7}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v7, 0x7f0801e5

    invoke-virtual {v4, v7}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v4, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v4, v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v2, v1, v8

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "Transactions"

    .line 98
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v8}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v3, 0x7f0801ed

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v2, v1, v5

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "Mon profil"

    .line 99
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v8}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v3, 0x7f0801a8

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v2, v1, v6

    new-instance v2, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "Point Fastpay"

    .line 101
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v8}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v3, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_add_location:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "Mobile money"

    .line 102
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v8}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v3, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_monetization_on:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "Scan card"

    .line 103
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v8}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v3, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_monetization_on:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;-><init>()V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "Param\u00e8tres"

    .line 105
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v3, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_settings_applications:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0x9

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "Nous contacter"

    .line 106
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v3, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_contact_phone:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const-string v3, "\u00c0 propos"

    .line 107
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v3, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_info:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0xb

    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 96
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withSavedInstance(Landroid/os/Bundle;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->build()Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object v0

    iput-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    .line 112
    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    new-instance v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    invoke-virtual {v1, v8}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-string v2, "D\u00e9connexion"

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v2, 0x7f0801e8

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    new-instance v2, Lcom/maishapay/ui/activities/DrawerActivity$2;

    invoke-direct {v2, p0}, Lcom/maishapay/ui/activities/DrawerActivity$2;-><init>(Lcom/maishapay/ui/activities/DrawerActivity;)V

    invoke-virtual {v1, v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/Drawer;->addStickyFooterItem(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)V

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x4000000

    const/16 v2, 0x15

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_0

    .line 150
    invoke-static {p0, v1, v5}, Lcom/maishapay/ui/activities/DrawerActivity;->setWindowFlag(Landroid/app/Activity;IZ)V

    .line 152
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/DrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x500

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 155
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 156
    invoke-static {p0, v1, v8}, Lcom/maishapay/ui/activities/DrawerActivity;->setWindowFlag(Landroid/app/Activity;IZ)V

    .line 157
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/DrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 160
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    .line 161
    iget-object v0, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "Maishapay"

    .line 165
    invoke-virtual {p0, p1}, Lcom/maishapay/ui/activities/DrawerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    new-instance p1, Lcom/maishapay/ui/fragment/AccueilFragment;

    invoke-direct {p1}, Lcom/maishapay/ui/fragment/AccueilFragment;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/maishapay/ui/activities/DrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f09012e

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/maishapay/ui/activities/DrawerActivity;->result:Lcom/mikepenz/materialdrawer/Drawer;

    new-instance v0, Lcom/maishapay/ui/activities/DrawerActivity$3;

    invoke-direct {v0, p0}, Lcom/maishapay/ui/activities/DrawerActivity$3;-><init>(Lcom/maishapay/ui/activities/DrawerActivity;)V

    invoke-virtual {p1, v0}, Lcom/mikepenz/materialdrawer/Drawer;->setOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)V

    return-void
.end method
