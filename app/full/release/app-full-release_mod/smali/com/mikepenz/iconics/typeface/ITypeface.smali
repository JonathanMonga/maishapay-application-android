.class public interface abstract Lcom/mikepenz/iconics/typeface/ITypeface;
.super Ljava/lang/Object;
.source "ITypeface.java"


# virtual methods
.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getCharacters()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFontName()Ljava/lang/String;
.end method

.method public abstract getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;
.end method

.method public abstract getIconCount()I
.end method

.method public abstract getIcons()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLicense()Ljava/lang/String;
.end method

.method public abstract getLicenseUrl()Ljava/lang/String;
.end method

.method public abstract getMappingPrefix()Ljava/lang/String;
.end method

.method public abstract getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method
