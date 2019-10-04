.class final Lcom/a/a/c/q;
.super Lio/fabric/sdk/android/services/common/a;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/c/p;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;)V
    .locals 6

    .line 39
    sget-object v5, Lio/fabric/sdk/android/services/network/HttpMethod;->POST:Lio/fabric/sdk/android/services/network/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/i;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/d;Lio/fabric/sdk/android/services/network/HttpMethod;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/a/a/c/o;)Z
    .locals 14

    .line 59
    invoke-virtual {p0}, Lcom/a/a/c/q;->a()Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    .line 1075
    iget-object v1, p1, Lcom/a/a/c/o;->apiKey:Ljava/lang/String;

    const-string v2, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {v0, v2, v1}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    .line 1076
    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/q;->b:Lio/fabric/sdk/android/i;

    .line 1077
    invoke-virtual {v1}, Lio/fabric/sdk/android/i;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-virtual {v0, v2, v1}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    .line 1080
    iget-object v1, p1, Lcom/a/a/c/o;->report:Lcom/a/a/c/af;

    invoke-interface {v1}, Lcom/a/a/c/af;->getCustomHeaders()Ljava/util/Map;

    move-result-object v1

    .line 1082
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1083
    invoke-virtual {v0, v2}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/util/Map$Entry;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p1, Lcom/a/a/c/o;->report:Lcom/a/a/c/af;

    .line 1089
    invoke-interface {p1}, Lcom/a/a/c/af;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "report[identifier]"

    invoke-virtual {v0, v2, v1}, Lio/fabric/sdk/android/services/network/c;->part(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/c;

    .line 1091
    invoke-interface {p1}, Lcom/a/a/c/af;->getFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    const-string v2, "application/octet-stream"

    const-string v3, " to report "

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "CrashlyticsCore"

    if-ne v1, v5, :cond_1

    .line 1092
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding single file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/a/a/c/af;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    invoke-interface {p1}, Lcom/a/a/c/af;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1092
    invoke-interface {v1, v6, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-interface {p1}, Lcom/a/a/c/af;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 1095
    invoke-interface {p1}, Lcom/a/a/c/af;->getFile()Ljava/io/File;

    move-result-object p1

    const-string v3, "report[file]"

    .line 1094
    invoke-virtual {v0, v3, v1, v2, p1}, Lio/fabric/sdk/android/services/network/c;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    goto :goto_2

    .line 1099
    :cond_1
    invoke-interface {p1}, Lcom/a/a/c/af;->getFiles()[Ljava/io/File;

    move-result-object v1

    array-length v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v10, v1, v8

    .line 1100
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Adding file "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-interface {p1}, Lcom/a/a/c/af;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1100
    invoke-interface {v11, v6, v12}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "report[file"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12, v2, v10}, Lio/fabric/sdk/android/services/network/c;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/network/c;

    add-int/2addr v9, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 63
    :cond_2
    :goto_2
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending report to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2100
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/a;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/network/c;->code()I

    move-result p1

    .line 67
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create report request ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "X-REQUEST-ID"

    .line 68
    invoke-virtual {v0, v3}, Lio/fabric/sdk/android/services/network/c;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-interface {v1, v6, v0}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Result was: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lio/fabric/sdk/android/services/common/p;->parse(I)I

    move-result p1

    if-nez p1, :cond_3

    return v5

    :cond_3
    return v4
.end method
