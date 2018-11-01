.class final Lio/michaelrocks/libphonenumber/android/MetadataManager;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# static fields
.field static final ALTERNATE_FORMATS_FILE_PREFIX:Ljava/lang/String; = "/io/michaelrocks/libphonenumber/android/data/PhoneNumberAlternateFormatsProto"

.field static final MULTI_FILE_PHONE_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/io/michaelrocks/libphonenumber/android/data/PhoneNumberMetadataProto"

.field static final SHORT_NUMBER_METADATA_FILE_PREFIX:Ljava/lang/String; = "/io/michaelrocks/libphonenumber/android/data/ShortNumberMetadataProto"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final alternateFormatsCountryCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataLoader:Lio/michaelrocks/libphonenumber/android/MetadataLoader;

.field private final shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final shortNumberMetadataRegionCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lio/michaelrocks/libphonenumber/android/MetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/MetadataLoader;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    invoke-static {}, Lio/michaelrocks/libphonenumber/android/AlternateFormatsCountryCodeSet;->getCountryCodeSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsCountryCodes:Ljava/util/Set;

    .line 68
    invoke-static {}, Lio/michaelrocks/libphonenumber/android/ShortNumbersRegionCodeSet;->getRegionCodeSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    .line 71
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->metadataLoader:Lio/michaelrocks/libphonenumber/android/MetadataLoader;

    return-void
.end method

.method private static getMetadataFromSingleFileName(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/MetadataLoader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/michaelrocks/libphonenumber/android/MetadataLoader;",
            ")",
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-interface {p1, p0}, Lio/michaelrocks/libphonenumber/android/MetadataLoader;->loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_0
    invoke-static {p1}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->loadMetadataAndCloseInput(Ljava/io/InputStream;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p1
.end method

.method private static loadMetadataAndCloseInput(Ljava/io/InputStream;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    .locals 5

    const/4 v0, 0x0

    .line 143
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    invoke-virtual {v0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 158
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 163
    :goto_0
    sget-object v1, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "error closing input stream (ignored)"

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    .line 151
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cannot load/parse metadata"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catch_2
    move-exception v1

    .line 145
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "cannot load/parse metadata"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    if-eqz v1, :cond_1

    .line 158
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_4

    :catch_3
    move-exception p0

    goto :goto_3

    .line 160
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 163
    :goto_3
    sget-object v1, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "error closing input stream (ignored)"

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_4
    throw v0
.end method


# virtual methods
.method getAlternateFormatsForCountry(ILjava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 2

    .line 75
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsCountryCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->alternateFormatsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TT;",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;"
        }
    .end annotation

    .line 102
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    if-eqz v0, :cond_0

    return-object v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 108
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->metadataLoader:Lio/michaelrocks/libphonenumber/android/MetadataLoader;

    invoke-static {p3, v0}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromSingleFileName(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/MetadataLoader;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 110
    sget-object v1, Lio/michaelrocks/libphonenumber/android/MetadataManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "more than one metadata in file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x0

    .line 112
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    .line 113
    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method getShortNumberMetadataForRegion(Ljava/lang/String;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 82
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0, p2}, Lio/michaelrocks/libphonenumber/android/MetadataManager;->getMetadataFromMultiFilePrefix(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object p1

    return-object p1
.end method

.method getSupportedShortNumberRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/MetadataManager;->shortNumberMetadataRegionCodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
