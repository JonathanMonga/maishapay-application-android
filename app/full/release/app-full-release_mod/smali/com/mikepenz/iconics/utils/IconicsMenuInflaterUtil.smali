.class public Lcom/mikepenz/iconics/utils/IconicsMenuInflaterUtil;
.super Ljava/lang/Object;
.source "IconicsMenuInflaterUtil.java"


# static fields
.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inflate(Landroid/view/MenuInflater;Landroid/content/Context;ILandroid/view/Menu;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mikepenz/iconics/utils/IconicsMenuInflaterUtil;->inflate(Landroid/view/MenuInflater;Landroid/content/Context;ILandroid/view/Menu;Z)V

    return-void
.end method

.method public static inflate(Landroid/view/MenuInflater;Landroid/content/Context;ILandroid/view/Menu;Z)V
    .locals 0

    .line 66
    invoke-virtual {p0, p2, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 69
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 70
    invoke-static {p1, p2, p0, p3, p4}, Lcom/mikepenz/iconics/utils/IconicsMenuInflaterUtil;->parseMenu(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/Menu;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 72
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static parseMenu(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/Menu;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 87
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "menu"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expecting menu, got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v2, :cond_0

    :goto_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    move v4, v0

    move-object v6, v1

    move v0, v3

    move v5, v0

    :goto_1
    if-nez v0, :cond_b

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_6

    .line 135
    :pswitch_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_3

    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v6, v1

    move v5, v3

    goto/16 :goto_6

    :cond_3
    const-string v7, "menu"

    .line 139
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v2

    goto/16 :goto_6

    :pswitch_1
    if-eqz v5, :cond_4

    goto/16 :goto_6

    .line 106
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x317b13

    if-eq v8, v9, :cond_6

    const v9, 0x33155f

    if-eq v8, v9, :cond_5

    goto :goto_2

    :cond_5
    const-string v8, "menu"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v7, v2

    goto :goto_2

    :cond_6
    const-string v8, "item"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v7, v3

    :cond_7
    :goto_2
    packed-switch v7, :pswitch_data_1

    move v5, v2

    goto :goto_5

    :pswitch_2
    if-eqz p4, :cond_9

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mikepenz/iconics/utils/IconicsMenuInflaterUtil;->parseMenu(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/Menu;Z)V

    goto :goto_4

    .line 109
    :pswitch_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v7, v3

    .line 110
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 111
    invoke-interface {p2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 113
    :cond_8
    invoke-static {p0, p1}, Lcom/mikepenz/iconics/context/IconicsAttrsApplier;->getIconicsDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v8, "id"

    .line 115
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "@"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 116
    invoke-interface {p3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_9
    :goto_4
    move-object v4, v6

    :goto_5
    move-object v6, v4

    goto :goto_6

    .line 145
    :pswitch_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected end of document"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_a
    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto/16 :goto_1

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
