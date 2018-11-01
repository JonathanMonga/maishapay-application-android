.class Lcom/mikepenz/iconics/context/InternalLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "InternalLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;,
        Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;,
        Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;
    }
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# instance fields
.field private mConstructorArgs:Ljava/lang/reflect/Field;

.field private final mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

.field private mSetPrivateFactory:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.widget."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.webkit."

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mSetPrivateFactory:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 34
    new-instance v0, Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-direct {v0}, Lcom/mikepenz/iconics/context/IconicsFactory;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    .line 35
    invoke-direct {p0, p1}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->setUpLayoutFactories(Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mSetPrivateFactory:Z

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 40
    new-instance p1, Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-direct {p1}, Lcom/mikepenz/iconics/context/IconicsFactory;-><init>()V

    iput-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    .line 41
    invoke-direct {p0, p3}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->setUpLayoutFactories(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/iconics/context/InternalLayoutInflater;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->createCustomViewInternal(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private createCustomViewInternal(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_1

    const/16 p1, 0x2e

    .line 150
    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 151
    iget-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    if-nez p1, :cond_0

    .line 152
    const-class p1, Landroid/view/LayoutInflater;

    const-string v0, "mConstructorArgs"

    invoke-static {p1, v0}, Lcom/mikepenz/iconics/context/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p1, p0}, Lcom/mikepenz/iconics/context/ReflectionUtils;->getValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 156
    aget-object v1, p1, v0

    .line 160
    aput-object p4, p1, v0

    .line 161
    iget-object p4, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p4, p0, p1}, Lcom/mikepenz/iconics/context/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 163
    :try_start_0
    invoke-virtual {p0, p3, p4, p5}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    aput-object v1, p1, v0

    .line 167
    iget-object p2, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p2, p0, p1}, Lcom/mikepenz/iconics/context/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p2, p3

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 166
    aput-object v1, p1, v0

    .line 167
    iget-object p3, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p3, p0, p1}, Lcom/mikepenz/iconics/context/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    throw p2

    .line 166
    :catch_0
    aput-object v1, p1, v0

    .line 167
    iget-object p3, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mConstructorArgs:Ljava/lang/reflect/Field;

    invoke-static {p3, p0, p1}, Lcom/mikepenz/iconics/context/ReflectionUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p2
.end method

.method private setPrivateFactoryInternal()V
    .locals 7

    .line 123
    iget-boolean v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mSetPrivateFactory:Z

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory2;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 129
    iput-boolean v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mSetPrivateFactory:Z

    return-void

    .line 133
    :cond_1
    const-class v0, Landroid/view/LayoutInflater;

    const-string v2, "setPrivateFactory"

    .line 134
    invoke-static {v0, v2}, Lcom/mikepenz/iconics/context/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;

    .line 140
    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater$Factory2;

    iget-object v6, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-direct {v4, v5, p0, v6}, Lcom/mikepenz/iconics/context/InternalLayoutInflater$PrivateWrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;Lcom/mikepenz/iconics/context/InternalLayoutInflater;Lcom/mikepenz/iconics/context/IconicsFactory;)V

    aput-object v4, v2, v3

    .line 137
    invoke-static {p0, v0, v2}, Lcom/mikepenz/iconics/context/ReflectionUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 142
    :cond_2
    iput-boolean v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mSetPrivateFactory:Z

    return-void
.end method

.method private setUpLayoutFactories(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p1

    instance-of p1, p1, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;

    if-nez p1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    .line 46
    new-instance v0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Z)V

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->setPrivateFactoryInternal()V

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    .line 71
    invoke-virtual {p0}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 69
    invoke-virtual {v0, p1, p2, p3}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 54
    :try_start_0
    invoke-virtual {p0, p1, v4, p2}, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 61
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v1, v0, p2}, Lcom/mikepenz/iconics/context/IconicsFactory;->onViewCreated(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 2

    .line 102
    instance-of v0, p1, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;

    iget-object v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-direct {v0, p1, p0, v1}, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory;-><init>(Landroid/view/LayoutInflater$Factory;Lcom/mikepenz/iconics/context/InternalLayoutInflater;Lcom/mikepenz/iconics/context/IconicsFactory;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :goto_0
    return-void
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 113
    instance-of v0, p1, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;

    iget-object v1, p0, Lcom/mikepenz/iconics/context/InternalLayoutInflater;->mIconicsFactory:Lcom/mikepenz/iconics/context/IconicsFactory;

    invoke-direct {v0, p1, v1}, Lcom/mikepenz/iconics/context/InternalLayoutInflater$WrapperFactory2;-><init>(Landroid/view/LayoutInflater$Factory2;Lcom/mikepenz/iconics/context/IconicsFactory;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :goto_0
    return-void
.end method
