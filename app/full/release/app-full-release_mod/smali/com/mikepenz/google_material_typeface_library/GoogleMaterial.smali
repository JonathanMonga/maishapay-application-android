.class public Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;
.super Ljava/lang/Object;
.source "GoogleMaterial.java"

# interfaces
.implements Lcom/mikepenz/iconics/typeface/ITypeface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;
    }
.end annotation


# static fields
.field private static final TTF_FILE:Ljava/lang/String; = "google-material-font-v3.0.1.0.original.ttf"

.field private static mChars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    const-string v0, "Google"

    return-object v0
.end method

.method public getCharacters()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;->mChars:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    invoke-static {}, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->values()[Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 43
    invoke-virtual {v4}, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->name()Ljava/lang/String;

    move-result-object v5

    iget-char v4, v4, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->character:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    sput-object v0, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;->mChars:Ljava/util/HashMap;

    .line 47
    :cond_1
    sget-object v0, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;->mChars:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Material design icons are the official icon set from Google that are designed under the material design guidelines."

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    const-string v0, "Google Material"

    return-object v0
.end method

.method public getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->valueOf(Ljava/lang/String;)Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    move-result-object p1

    return-object p1
.end method

.method public getIconCount()I
    .locals 1

    .line 67
    sget-object v0, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;->mChars:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getIcons()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 73
    invoke-static {}, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->values()[Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 74
    invoke-virtual {v4}, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getLicense()Ljava/lang/String;
    .locals 1

    const-string v0, "CC-BY 4.0"

    return-object v0
.end method

.method public getLicenseUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://creativecommons.org/licenses/by/4.0/"

    return-object v0
.end method

.method public getMappingPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "gmd"

    return-object v0
.end method

.method public getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 1

    .line 106
    sget-object v0, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;->typeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/google-material-font-v3.0.1.0.original.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    sput-object p1, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;->typeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    :goto_0
    sget-object p1, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial;->typeface:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://github.com/google/material-design-icons"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.1.0.original"

    return-object v0
.end method
