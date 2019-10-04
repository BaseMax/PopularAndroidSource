.class public abstract Lcom/ebay/common/view/search/EbaySearchProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "EbaySearchProvider.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/app/FwContext;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.ebay.mobile.ebaysearch"

.field public static final LANDING_PAGE_SEARCH_SUGGEST_QUERY:Ljava/lang/String; = "searchLanding"

.field public static final ROW_TYPE_EBAY_NO_CATEGORY:Ljava/lang/String; = "ebayNoCategory"

.field public static final ROW_TYPE_RECENT:Ljava/lang/String; = "recent"


# instance fields
.field ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 68
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/ebay/common/view/search/EbaySearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 69
    iget-object v0, p0, Lcom/ebay/common/view/search/EbaySearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "search_suggest_query"

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/ebay/common/view/search/EbaySearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "*/*/search_suggest_query"

    const/4 v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/ebay/common/view/search/EbaySearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "search_suggest_query/searchLanding"

    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p0, p1, v2}, Lcom/ebay/common/view/search/EbaySearchProvider;->setupSuggestions(Ljava/lang/String;I)V

    return-void
.end method

.method private addAutoFillSuggestions(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;,
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;,
            Lcom/ebay/common/net/EbayRequestHelper$EbayRequestErrorException;,
            Lcom/ebay/nautilus/kernel/net/HostErrorException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 213
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/ebay/common/view/util/BarcodeScanUtil;->isProductQuery(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 222
    new-instance v3, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result v1

    invoke-direct {v3, v1, v2}, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionRequest;-><init>(ILjava/lang/String;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getConnector()Lcom/ebay/nautilus/kernel/net/Connector;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/ebay/nautilus/kernel/net/Connector;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;

    .line 224
    iget-object v1, v1, Lcom/ebay/common/net/api/autocomplete/AutoSuggestionResponse;->results:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 228
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 232
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/common/model/AutoFillSuggestion;

    .line 234
    iget-object v6, v5, Lcom/ebay/common/model/AutoFillSuggestion;->title:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/ebay/common/model/AutoFillSuggestion;->categoryName:Ljava/lang/String;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    goto :goto_0

    :cond_2
    :goto_1
    const-string v6, ""

    .line 238
    iget-object v7, v5, Lcom/ebay/common/model/AutoFillSuggestion;->categoryName:Ljava/lang/String;

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1205c0

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, v5, Lcom/ebay/common/model/AutoFillSuggestion;->categoryName:Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    move-object/from16 v7, p3

    move-object v9, v6

    move-object/from16 v6, p0

    .line 241
    invoke-direct {v6, v5, v7}, Lcom/ebay/common/view/search/EbaySearchProvider;->shouldSuggestCategories(Lcom/ebay/common/model/AutoFillSuggestion;Landroid/content/ComponentName;)Z

    move-result v10

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v11, 0x8

    const/16 v17, 0x0

    if-eqz v10, :cond_4

    if-gt v4, v8, :cond_4

    .line 243
    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    iget-object v11, v5, Lcom/ebay/common/model/AutoFillSuggestion;->title:Ljava/lang/String;

    aput-object v11, v10, v8

    aput-object v9, v10, v16

    iget-object v9, v5, Lcom/ebay/common/model/AutoFillSuggestion;->title:Ljava/lang/String;

    aput-object v9, v10, v15

    aput-object v17, v10, v14

    .line 244
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/ebay/common/model/AutoFillSuggestion;->categoryName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/ebay/common/model/AutoFillSuggestion;->categoryId:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x7

    aput-object v5, v10, v8

    .line 243
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 248
    :cond_4
    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    iget-object v10, v5, Lcom/ebay/common/model/AutoFillSuggestion;->title:Ljava/lang/String;

    aput-object v10, v9, v8

    aput-object v17, v9, v16

    iget-object v5, v5, Lcom/ebay/common/model/AutoFillSuggestion;->title:Ljava/lang/String;

    aput-object v5, v9, v15

    aput-object v17, v9, v14

    .line 249
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v13

    const-string v5, "ebayNoCategory"

    aput-object v5, v9, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x7

    aput-object v5, v9, v8

    .line 248
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    move-object/from16 v6, p0

    return-void
.end method

.method private addRecents(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/MatrixCursor;Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Landroid/database/MatrixCursor;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12036b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "suggest_format"

    .line 160
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "suggest_text_1"

    .line 161
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "suggest_intent_query"

    .line 162
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "_id"

    .line 163
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 164
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v9, 0x0

    .line 167
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-eqz v11, :cond_1

    .line 169
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 170
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 171
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 172
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    cmp-long v23, v21, v9

    if-lez v23, :cond_0

    move-wide/from16 v9, v21

    .line 175
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v19

    aput-object v20, v12, v13

    aput-object v3, v12, v17

    aput-object v14, v12, v16

    const/4 v11, 0x4

    aput-object v18, v12, v11

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x5

    aput-object v11, v12, v13

    const-string v11, "recent"

    const/4 v13, 0x6

    aput-object v11, v12, v13

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x7

    aput-object v11, v12, v13

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 181
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v13, :cond_3

    .line 184
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 187
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 189
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 192
    :cond_2
    new-array v2, v12, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v19

    aput-object v0, v2, v13

    aput-object v18, v2, v17

    aput-object v0, v2, v16

    const/4 v0, 0x4

    aput-object v18, v2, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    const/4 v0, 0x6

    aput-object v18, v2, v0

    const-wide/16 v3, 0x1

    add-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private addSavedSearchesLink(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120bc7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    .line 153
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const v0, 0x7f080383

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x5

    aput-object v0, v1, v4

    const/4 v0, 0x6

    aput-object v3, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addScanButtonIfSupported(Landroid/content/ComponentName;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 199
    invoke-static {p3}, Lcom/ebay/common/view/util/BarcodeScanUtil;->isProductQuery(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/camera/barcode/BarcodeScannerActivity;->shouldDisplayScanButton(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f120bcf

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x8

    .line 205
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v1, 0x1

    aput-object p1, p3, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, p3, v1

    const/4 v1, 0x3

    aput-object p1, p3, v1

    const/4 p1, 0x4

    const v1, 0x7f080396

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, p1

    const/4 p1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, p1

    const/4 p1, 0x6

    aput-object v2, p3, p1

    const/4 p1, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addSellerSearch(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120bea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    .line 146
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v0, 0x2

    aput-object p3, v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const p2, 0x7f0802bf

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x4

    aput-object p2, v1, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x5

    aput-object p2, v1, p3

    const/4 p2, 0x6

    const/4 p3, 0x0

    aput-object p3, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, v1, p3

    .line 146
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final getSuggestionsManager(Landroid/content/Context;Ljava/lang/String;)Landroid/provider/SearchRecentSuggestions;
    .locals 2

    .line 77
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method private inject()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ebay/common/view/search/EbaySearchProvider;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/content/ContentProvider;)V

    :cond_0
    return-void
.end method

.method private isCategorySuggestion(Lcom/ebay/common/model/AutoFillSuggestion;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p1, Lcom/ebay/common/model/AutoFillSuggestion;->categoryId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldSuggestCategories(Lcom/ebay/common/model/AutoFillSuggestion;Landroid/content/ComponentName;)Z
    .locals 3

    .line 258
    invoke-virtual {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 261
    :goto_0
    invoke-static {v0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->supportsCategorySuggestions(Lcom/ebay/nautilus/domain/EbayCountry;)Z

    move-result v0

    if-eqz p2, :cond_1

    .line 263
    invoke-direct {p0, p1}, Lcom/ebay/common/view/search/EbaySearchProvider;->isCategorySuggestion(Lcom/ebay/common/model/AutoFillSuggestion;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected addEbaySuggestions(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/database/MatrixCursor;
    .locals 8

    const-string/jumbo v0, "suggest_format"

    const-string/jumbo v1, "suggest_text_1"

    const-string/jumbo v2, "suggest_text_2"

    const-string/jumbo v3, "suggest_intent_query"

    const-string/jumbo v4, "suggest_icon_2"

    const-string/jumbo v5, "suggest_flags"

    const-string/jumbo v6, "suggest_intent_extra_data"

    const-string v7, "_id"

    .line 98
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 112
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getApp()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    invoke-direct {p0, p2, v0, p3}, Lcom/ebay/common/view/search/EbaySearchProvider;->addAutoFillSuggestions(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 115
    :cond_0
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/ebay/common/view/search/EbaySearchProvider;->addRecents(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/MatrixCursor;Ljava/util/ArrayList;)V

    .line 116
    sget-object v2, Lcom/ebay/nautilus/domain/content/dm/search/SearchPrefixType;->SELLER:Lcom/ebay/nautilus/domain/content/dm/search/SearchPrefixType;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/content/dm/search/SearchPrefixType;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-direct {p0, v0, v2, p2}, Lcom/ebay/common/view/search/EbaySearchProvider;->addSellerSearch(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    invoke-direct {p0, p3, v0, p2}, Lcom/ebay/common/view/search/EbaySearchProvider;->addScanButtonIfSupported(Landroid/content/ComponentName;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/ebay/common/view/search/EbaySearchProvider;->addSavedSearchesLink(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-direct {p0, p3, v0, p2}, Lcom/ebay/common/view/search/EbaySearchProvider;->addScanButtonIfSupported(Landroid/content/ComponentName;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/ebay/common/view/search/EbaySearchProvider;->addRecents(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/MatrixCursor;Ljava/util/ArrayList;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/ebay/common/view/search/EbaySearchProvider;->addSavedSearchesLink(Ljava/util/ArrayList;)V

    .line 129
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/Object;

    .line 130
    invoke-virtual {v1, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 134
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 139
    throw p2
.end method

.method protected abstract getCountry()Lcom/ebay/nautilus/domain/EbayCountry;
.end method

.method public getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->inject()V

    .line 84
    iget-object v0, p0, Lcom/ebay/common/view/search/EbaySearchProvider;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    move-object v6, p0

    move-object v7, p1

    .line 283
    iget-object v0, v6, Lcom/ebay/common/view/search/EbaySearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v10, v1

    move-object v1, v7

    const/4 v9, 0x0

    goto :goto_1

    .line 297
    :pswitch_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 298
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.ebay.mobile.ebaysearch"

    .line 299
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "search_suggest_query"

    .line 300
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v10, v1

    const/4 v9, 0x0

    move-object v1, v0

    goto :goto_1

    .line 291
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 292
    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    move-object v10, v3

    goto :goto_0

    :pswitch_2
    move-object v10, v1

    move-object v1, v7

    :goto_0
    const/4 v9, 0x1

    :goto_1
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 305
    invoke-super/range {v0 .. v5}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v9, :cond_0

    .line 310
    aget-object v1, p4, v8

    invoke-virtual {p0, v0, v1, v10}, Lcom/ebay/common/view/search/EbaySearchProvider;->addEbaySuggestions(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/ebay/common/view/search/EbaySearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
