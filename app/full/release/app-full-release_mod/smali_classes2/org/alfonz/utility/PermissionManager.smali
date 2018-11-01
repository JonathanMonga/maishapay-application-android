.class public Lorg/alfonz/utility/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alfonz/utility/PermissionManager$FragmentRequestable;,
        Lorg/alfonz/utility/PermissionManager$ActivityRequestable;,
        Lorg/alfonz/utility/PermissionManager$PermissionsResult;,
        Lorg/alfonz/utility/PermissionManager$PermissionRequestable;,
        Lorg/alfonz/utility/PermissionManager$PermissionsCallback;,
        Lorg/alfonz/utility/PermissionManager$PermissionCallback;,
        Lorg/alfonz/utility/PermissionManager$PermissionAction;,
        Lorg/alfonz/utility/PermissionManager$ConfirmAction;,
        Lorg/alfonz/utility/PermissionManager$RationaleHandler;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_PERMISSION:I = 0x1

.field private static final REQUEST_CODE_PERMISSIONS:I = 0x2


# instance fields
.field private mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

.field private mPermissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

.field private mRationaleHandler:Lorg/alfonz/utility/PermissionManager$RationaleHandler;


# direct methods
.method public constructor <init>(Lorg/alfonz/utility/PermissionManager$RationaleHandler;)V
    .locals 0
    .param p1    # Lorg/alfonz/utility/PermissionManager$RationaleHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/alfonz/utility/PermissionManager;->mRationaleHandler:Lorg/alfonz/utility/PermissionManager$RationaleHandler;

    return-void
.end method

.method static synthetic access$102(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)Lorg/alfonz/utility/PermissionManager$PermissionCallback;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

    return-object p1
.end method

.method static synthetic access$202(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)Lorg/alfonz/utility/PermissionManager$PermissionsCallback;
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    return-object p1
.end method

.method public static varargs check(Landroid/content/Context;[Ljava/lang/String;)Lorg/alfonz/utility/PermissionManager$PermissionsResult;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    .line 70
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 71
    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v1

    .line 72
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance p0, Lorg/alfonz/utility/PermissionManager$PermissionsResult;

    invoke-direct {p0, v0}, Lorg/alfonz/utility/PermissionManager$PermissionsResult;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static check(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createRationaleConfirmAction(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)Lorg/alfonz/utility/PermissionManager$ConfirmAction;
    .locals 1
    .param p1    # Lorg/alfonz/utility/PermissionManager$PermissionRequestable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 208
    new-instance v0, Lorg/alfonz/utility/PermissionManager$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/alfonz/utility/PermissionManager$2;-><init>(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionCallback;Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;)V

    return-object v0
.end method

.method private createRationaleConfirmAction(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)Lorg/alfonz/utility/PermissionManager$ConfirmAction;
    .locals 1
    .param p1    # Lorg/alfonz/utility/PermissionManager$PermissionRequestable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionsCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 219
    new-instance v0, Lorg/alfonz/utility/PermissionManager$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/alfonz/utility/PermissionManager$3;-><init>(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;)V

    return-object v0
.end method

.method private onRequestPermissionsResult(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;I[Ljava/lang/String;[I)V
    .locals 2
    .param p1    # Lorg/alfonz/utility/PermissionManager$PermissionRequestable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/utility/PermissionManager$PermissionRequestable<",
            "TT;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 188
    array-length p2, p4

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 189
    aget p4, p4, p2

    if-nez p4, :cond_0

    .line 190
    iget-object p2, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRequestable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/alfonz/utility/PermissionManager$PermissionCallback;->onPermissionGranted(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_0
    aget-object p2, p3, p2

    invoke-interface {p1, p2}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->shouldShowRationale(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 193
    iget-object p2, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRequestable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/alfonz/utility/PermissionManager$PermissionCallback;->onPermissionDenied(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object p2, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRequestable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/alfonz/utility/PermissionManager$PermissionCallback;->onPermissionBlocked(Ljava/lang/Object;)V

    .line 199
    :cond_2
    :goto_0
    iput-object v1, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

    goto :goto_1

    .line 200
    :cond_3
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 201
    iget-object p2, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRequestable()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Lorg/alfonz/utility/PermissionManager$PermissionsResult;

    invoke-direct {v0, p3, p4}, Lorg/alfonz/utility/PermissionManager$PermissionsResult;-><init>([Ljava/lang/String;[I)V

    invoke-interface {p2, p1, v0}, Lorg/alfonz/utility/PermissionManager$PermissionsCallback;->onPermissionsResult(Ljava/lang/Object;Lorg/alfonz/utility/PermissionManager$PermissionsResult;)V

    .line 202
    iput-object v1, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    :cond_4
    :goto_1
    return-void
.end method

.method private request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 1
    .param p1    # Lorg/alfonz/utility/PermissionManager$PermissionRequestable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/utility/PermissionManager$PermissionRequestable<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/alfonz/utility/PermissionManager$1;

    invoke-direct {v0, p0, p3, p4, p5}, Lorg/alfonz/utility/PermissionManager$1;-><init>(Lorg/alfonz/utility/PermissionManager;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)V

    return-void
.end method

.method private request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)V
    .locals 3
    .param p1    # Lorg/alfonz/utility/PermissionManager$PermissionRequestable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/utility/PermissionManager$PermissionRequestable<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/alfonz/utility/PermissionManager;->check(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRequestable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/alfonz/utility/PermissionManager$PermissionCallback;->onPermissionGranted(Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_0
    invoke-interface {p1, p2}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->shouldShowRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/alfonz/utility/PermissionManager;->mRationaleHandler:Lorg/alfonz/utility/PermissionManager$RationaleHandler;

    .line 150
    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/alfonz/utility/PermissionManager;->mRationaleHandler:Lorg/alfonz/utility/PermissionManager$RationaleHandler;

    .line 151
    invoke-interface {v2, p2}, Lorg/alfonz/utility/PermissionManager$RationaleHandler;->getRationaleMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lorg/alfonz/utility/PermissionManager;->createRationaleConfirmAction(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)Lorg/alfonz/utility/PermissionManager$ConfirmAction;

    move-result-object p1

    .line 149
    invoke-interface {v0, v1, v2, p1}, Lorg/alfonz/utility/PermissionManager$RationaleHandler;->showRationale(Landroid/view/View;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$ConfirmAction;)V

    goto :goto_0

    .line 154
    :cond_1
    iput-object p3, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionCallback:Lorg/alfonz/utility/PermissionManager$PermissionCallback;

    .line 155
    invoke-interface {p1, p2}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->requestPermission(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)V
    .locals 6
    .param p1    # Lorg/alfonz/utility/PermissionManager$PermissionRequestable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionsCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alfonz/utility/PermissionManager$PermissionRequestable<",
            "TT;>;[",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/alfonz/utility/PermissionManager;->check(Landroid/content/Context;[Ljava/lang/String;)Lorg/alfonz/utility/PermissionManager$PermissionsResult;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lorg/alfonz/utility/PermissionManager$PermissionsResult;->isGranted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRequestable()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lorg/alfonz/utility/PermissionManager$PermissionsCallback;->onPermissionsResult(Ljava/lang/Object;Lorg/alfonz/utility/PermissionManager$PermissionsResult;)V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 167
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 168
    invoke-interface {p1, v4}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->shouldShowRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    iget-object p2, p0, Lorg/alfonz/utility/PermissionManager;->mRationaleHandler:Lorg/alfonz/utility/PermissionManager$RationaleHandler;

    .line 170
    invoke-interface {p1}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/alfonz/utility/PermissionManager;->mRationaleHandler:Lorg/alfonz/utility/PermissionManager$RationaleHandler;

    .line 171
    invoke-interface {v2, v4}, Lorg/alfonz/utility/PermissionManager$RationaleHandler;->getRationaleMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v0}, Lorg/alfonz/utility/PermissionManager$PermissionsResult;->access$000(Lorg/alfonz/utility/PermissionManager$PermissionsResult;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, p3}, Lorg/alfonz/utility/PermissionManager;->createRationaleConfirmAction(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)Lorg/alfonz/utility/PermissionManager$ConfirmAction;

    move-result-object v3

    .line 169
    invoke-interface {p2, v1, v2, v3}, Lorg/alfonz/utility/PermissionManager$RationaleHandler;->showRationale(Landroid/view/View;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$ConfirmAction;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 179
    iput-object p3, p0, Lorg/alfonz/utility/PermissionManager;->mPermissionsCallback:Lorg/alfonz/utility/PermissionManager$PermissionsCallback;

    .line 180
    invoke-static {v0}, Lorg/alfonz/utility/PermissionManager$PermissionsResult;->access$000(Lorg/alfonz/utility/PermissionManager$PermissionsResult;)[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/alfonz/utility/PermissionManager$PermissionRequestable;->requestPermissions([Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;

    invoke-direct {v0, p1}, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/alfonz/utility/PermissionManager;->onRequestPermissionsResult(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 122
    new-instance v0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;

    invoke-direct {v0, p1}, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/alfonz/utility/PermissionManager;->onRequestPermissionsResult(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public request(Landroid/app/Activity;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    new-instance v1, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;

    invoke-direct {v1, p1}, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;-><init>(Landroid/app/Activity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V

    return-void
.end method

.method public request(Landroid/app/Activity;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    new-instance v1, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;

    invoke-direct {v1, p1}, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V

    return-void
.end method

.method public request(Landroid/app/Activity;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 94
    new-instance v1, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;

    invoke-direct {v1, p1}, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;-><init>(Landroid/app/Activity;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V

    return-void
.end method

.method public request(Landroid/app/Activity;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;

    invoke-direct {v0, p1}, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)V

    return-void
.end method

.method public request(Landroid/app/Activity;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionsCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(TT;[",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;

    invoke-direct {v0, p1}, Lorg/alfonz/utility/PermissionManager$ActivityRequestable;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)V

    return-void
.end method

.method public request(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 6
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    new-instance v1, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;

    invoke-direct {v1, p1}, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V

    return-void
.end method

.method public request(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 6
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    new-instance v1, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;

    invoke-direct {v1, p1}, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V

    return-void
.end method

.method public request(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V
    .locals 6
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/alfonz/utility/PermissionManager$PermissionAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;",
            "Lorg/alfonz/utility/PermissionManager$PermissionAction<",
            "TT;>;)V"
        }
    .end annotation

    .line 98
    new-instance v1, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;

    invoke-direct {v1, p1}, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;-><init>(Landroid/support/v4/app/Fragment;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;Lorg/alfonz/utility/PermissionManager$PermissionAction;)V

    return-void
.end method

.method public request(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;

    invoke-direct {v0, p1}, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionCallback;)V

    return-void
.end method

.method public request(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/alfonz/utility/PermissionManager$PermissionsCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(TT;[",
            "Ljava/lang/String;",
            "Lorg/alfonz/utility/PermissionManager$PermissionsCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    new-instance v0, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;

    invoke-direct {v0, p1}, Lorg/alfonz/utility/PermissionManager$FragmentRequestable;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/alfonz/utility/PermissionManager;->request(Lorg/alfonz/utility/PermissionManager$PermissionRequestable;[Ljava/lang/String;Lorg/alfonz/utility/PermissionManager$PermissionsCallback;)V

    return-void
.end method
