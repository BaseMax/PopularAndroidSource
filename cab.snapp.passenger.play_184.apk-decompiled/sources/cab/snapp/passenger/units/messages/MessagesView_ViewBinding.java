package cab.snapp.passenger.units.messages;

import android.view.View;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;

public class MessagesView_ViewBinding implements Unbinder {
    private MessagesView target;

    public MessagesView_ViewBinding(MessagesView messagesView) {
        this(messagesView, messagesView);
    }

    public MessagesView_ViewBinding(MessagesView messagesView, View view) {
        this.target = messagesView;
        messagesView.viewMessagesRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.view_messages_recyclerView, "field 'viewMessagesRecyclerView'", RecyclerView.class);
        messagesView.viewMessagesEmpty = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_messages_empty, "field 'viewMessagesEmpty'", LinearLayout.class);
    }

    public void unbind() {
        MessagesView messagesView = this.target;
        if (messagesView != null) {
            this.target = null;
            messagesView.viewMessagesRecyclerView = null;
            messagesView.viewMessagesEmpty = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
