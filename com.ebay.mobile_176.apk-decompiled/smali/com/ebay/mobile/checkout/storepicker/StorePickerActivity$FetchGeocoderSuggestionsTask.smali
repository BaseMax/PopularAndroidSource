.class Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;
.super Landroid/os/AsyncTask;
.source "StorePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchGeocoderSuggestionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final autocompleteColNames:[Ljava/lang/String;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private isOnQueryTextSubmit:Z

.field private query:Ljava/lang/String;

.field private site:Lcom/ebay/nautilus/domain/EbaySite;

.field final synthetic this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Landroid/content/Context;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;)V
    .locals 1

    .line 573
    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, "_id"

    const-string/jumbo v0, "suggest_text_1"

    .line 584
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->autocompleteColNames:[Ljava/lang/String;

    .line 574
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->context:Ljava/lang/ref/WeakReference;

    .line 575
    iput-object p3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 576
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 6

    .line 593
    new-instance p1, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->autocompleteColNames:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 595
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->site:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/EbaySite;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->query:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$002(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :catch_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->query:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$000(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getSuggestionListAddresses(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 609
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 611
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 612
    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/2addr v2, v5

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 564
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 4

    .line 622
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->isOnQueryTextSubmit:Z

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$100(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Landroidx/appcompat/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getSuggestionsAdapter()Landroidx/cursoradapter/widget/CursorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$000(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-static {p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$000(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 626
    new-instance p1, Lcom/ebay/mobile/inventory/StorePickerAutocompleteDialogFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/inventory/StorePickerAutocompleteDialogFragment;-><init>()V

    .line 627
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "location_list"

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    .line 629
    invoke-static {v3}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->access$000(Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 628
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 630
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/inventory/StorePickerAutocompleteDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 631
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->this$0:Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "autocomplete_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/ebay/mobile/inventory/StorePickerAutocompleteDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 564
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method

.method setIsOnQueryTextSubmit(Z)V
    .locals 0

    .line 581
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/StorePickerActivity$FetchGeocoderSuggestionsTask;->isOnQueryTextSubmit:Z

    return-void
.end method
