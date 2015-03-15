package frame;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.Toolkit;

import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.ScrollPaneConstants;
import javax.swing.SwingConstants;

public class MainFrame extends JFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private static final String COM1 = "COM1";
	private static final String COM2 = "COM2";
	private static final String COM3 = "COM3";
	private static final String COM4 = "COM4";
	private static final String COM5 = "COM5";
	private static final String COM6 = "COM6";
	private static final String COM7 = "COM7";
	private static final String COM8 = "COM8";
	private static final String COM9 = "COM9";
	private static final String COM10 = "COM10";

	private static final String BAUDRATE_9600 = "9600";
	private static final String BAUDRATE_11200 = "11200";

	private static final String EVEN_CHECK = "偶校验";
	private static final String ODD_CHECK = "奇校验";
	private static final String NO_CHECK = "无校验";

	public MainFrame() {
		setTitle("CarDataAnalysis");
		setMinimumSize(new Dimension(500, 500));
		setPreferredSize(new Dimension(500, 500));

		int w = (Toolkit.getDefaultToolkit().getScreenSize().width - getWidth()) / 2;
		int h = (Toolkit.getDefaultToolkit().getScreenSize().height - getHeight()) / 2;
		this.setLocation(w, h);

		getContentPane().setLayout(new BorderLayout(0, 0));

		JMenuBar menuBar = new JMenuBar();
		getContentPane().add(menuBar, BorderLayout.NORTH);

		JMenu fileMenu = new JMenu("\u6587\u4EF6");
		menuBar.add(fileMenu);

		JMenuItem mntmNewMenuItem = new JMenuItem("New menu item");
		fileMenu.add(mntmNewMenuItem);

		JMenu editorMenu = new JMenu("\u7F16\u8F91");
		menuBar.add(editorMenu);

		JMenuItem mntmNewMenuItem_1 = new JMenuItem("New menu item");
		editorMenu.add(mntmNewMenuItem_1);

		JMenu utilMenu = new JMenu("\u5DE5\u5177");
		menuBar.add(utilMenu);

		JMenuItem mntmNewMenuItem_2 = new JMenuItem("New menu item");
		utilMenu.add(mntmNewMenuItem_2);

		JMenu helpMenu = new JMenu("\u5E2E\u52A9");
		menuBar.add(helpMenu);

		JMenuItem mntmNewMenuItem_3 = new JMenuItem("New menu item");
		helpMenu.add(mntmNewMenuItem_3);

		JPanel MainPanel = new JPanel();
		getContentPane().add(MainPanel);
		MainPanel.setLayout(new BorderLayout(0, 0));

		JPanel controlPanel = new JPanel();
		MainPanel.add(controlPanel, BorderLayout.WEST);
		controlPanel.setLayout(new BorderLayout(0, 0));

		JPanel initPanel = new JPanel();
		controlPanel.add(initPanel, BorderLayout.NORTH);
		GridBagLayout gbl_initPanel = new GridBagLayout();
		gbl_initPanel.columnWidths = new int[] { 170, 0 };
		gbl_initPanel.rowHeights = new int[] { 0, 0, 0, 0, 0, 0 };
		gbl_initPanel.columnWeights = new double[] { 1.0, Double.MIN_VALUE };
		gbl_initPanel.rowWeights = new double[] { 0.0, 0.0, 0.0, 0.0, 1.0,
				Double.MIN_VALUE };
		initPanel.setLayout(gbl_initPanel);

		JPanel priorityPanel = new JPanel();
		GridBagLayout gbl_priorityPanel = new GridBagLayout();
		gbl_priorityPanel.columnWidths = new int[] { 80, 85, 0 };
		gbl_priorityPanel.rowHeights = new int[] { 21, 0 };
		gbl_priorityPanel.columnWeights = new double[] { 0.0, 0.0,
				Double.MIN_VALUE };
		gbl_priorityPanel.rowWeights = new double[] { 0.0, Double.MIN_VALUE };
		priorityPanel.setLayout(gbl_priorityPanel);
		GridBagConstraints gbc_priorityPanel = new GridBagConstraints();
		gbc_priorityPanel.anchor = GridBagConstraints.EAST;
		gbc_priorityPanel.insets = new Insets(0, 0, 5, 0);
		gbc_priorityPanel.gridx = 0;
		gbc_priorityPanel.gridy = 2;
		initPanel.add(priorityPanel, gbc_priorityPanel);

		JLabel priorityLabel = new JLabel("\u6821\u9A8C\u4F4D");
		priorityLabel.setVerticalAlignment(SwingConstants.TOP);
		priorityLabel.setHorizontalAlignment(SwingConstants.CENTER);
		GridBagConstraints gbc_priorityLabel = new GridBagConstraints();
		gbc_priorityLabel.anchor = GridBagConstraints.EAST;
		gbc_priorityLabel.insets = new Insets(0, 0, 0, 5);
		gbc_priorityLabel.gridx = 0;
		gbc_priorityLabel.gridy = 0;
		priorityPanel.add(priorityLabel, gbc_priorityLabel);

		JComboBox<String> priorityComboBox = new JComboBox<String>();
		priorityComboBox.addItem(EVEN_CHECK);
		priorityComboBox.addItem(ODD_CHECK);
		priorityComboBox.addItem(NO_CHECK);
		GridBagConstraints gbc_priorityComboBox = new GridBagConstraints();
		gbc_priorityComboBox.weightx = 1.0;
		gbc_priorityComboBox.gridwidth = 2;
		gbc_priorityComboBox.anchor = GridBagConstraints.EAST;
		gbc_priorityComboBox.fill = GridBagConstraints.HORIZONTAL;
		gbc_priorityComboBox.gridx = 1;
		gbc_priorityComboBox.gridy = 0;
		priorityPanel.add(priorityComboBox, gbc_priorityComboBox);

		JPanel baudRatePanel = new JPanel();
		GridBagLayout gbl_baudRatePanel = new GridBagLayout();
		gbl_baudRatePanel.columnWidths = new int[] { 85, 85, 0 };
		gbl_baudRatePanel.rowHeights = new int[] { 21, 0 };
		gbl_baudRatePanel.columnWeights = new double[] { 0.0, 0.0,
				Double.MIN_VALUE };
		gbl_baudRatePanel.rowWeights = new double[] { 0.0, Double.MIN_VALUE };
		baudRatePanel.setLayout(gbl_baudRatePanel);

		JLabel baudRateLabel = new JLabel("\u6CE2\u7279\u7387");
		baudRateLabel.setVerticalAlignment(SwingConstants.TOP);
		baudRateLabel.setHorizontalAlignment(SwingConstants.CENTER);
		GridBagConstraints gbc_baudRateLabel = new GridBagConstraints();
		gbc_baudRateLabel.anchor = GridBagConstraints.EAST;
		gbc_baudRateLabel.insets = new Insets(0, 0, 0, 5);
		gbc_baudRateLabel.gridx = 0;
		gbc_baudRateLabel.gridy = 0;
		baudRatePanel.add(baudRateLabel, gbc_baudRateLabel);
		GridBagConstraints gbc_baudRatePanel = new GridBagConstraints();
		gbc_baudRatePanel.anchor = GridBagConstraints.EAST;
		gbc_baudRatePanel.insets = new Insets(0, 0, 5, 0);
		gbc_baudRatePanel.gridx = 0;
		gbc_baudRatePanel.gridy = 1;
		initPanel.add(baudRatePanel, gbc_baudRatePanel);

		JComboBox<String> baudRateComboBox = new JComboBox<String>();
		GridBagConstraints gbc_baudRateComboBox = new GridBagConstraints();
		gbc_baudRateComboBox.weightx = 1.0;
		gbc_baudRateComboBox.anchor = GridBagConstraints.EAST;
		gbc_baudRateComboBox.fill = GridBagConstraints.HORIZONTAL;
		gbc_baudRateComboBox.gridx = 1;
		gbc_baudRateComboBox.gridy = 0;
		baudRatePanel.add(baudRateComboBox, gbc_baudRateComboBox);
		baudRateComboBox.addItem(BAUDRATE_9600);
		baudRateComboBox.addItem(BAUDRATE_11200);

		JPanel comPortPanel = new JPanel();
		GridBagLayout gbl_comPortPanel = new GridBagLayout();
		gbl_comPortPanel.columnWidths = new int[] { 85, 85, 0 };
		gbl_comPortPanel.rowHeights = new int[] { 21, 0 };
		gbl_comPortPanel.columnWeights = new double[] { 0.0, 0.0,
				Double.MIN_VALUE };
		gbl_comPortPanel.rowWeights = new double[] { 0.0, Double.MIN_VALUE };
		comPortPanel.setLayout(gbl_comPortPanel);

		JLabel comPortLabel = new JLabel("\u4E32\u53E3");
		comPortLabel.setHorizontalAlignment(SwingConstants.CENTER);
		comPortLabel.setVerticalAlignment(SwingConstants.TOP);
		GridBagConstraints gbc_comPortLabel = new GridBagConstraints();
		gbc_comPortLabel.anchor = GridBagConstraints.EAST;
		gbc_comPortLabel.insets = new Insets(0, 0, 0, 5);
		gbc_comPortLabel.gridx = 0;
		gbc_comPortLabel.gridy = 0;
		comPortPanel.add(comPortLabel, gbc_comPortLabel);
		GridBagConstraints gbc_comPortPanel = new GridBagConstraints();
		gbc_comPortPanel.insets = new Insets(0, 0, 5, 0);
		gbc_comPortPanel.anchor = GridBagConstraints.EAST;
		gbc_comPortPanel.gridx = 0;
		gbc_comPortPanel.gridy = 0;
		initPanel.add(comPortPanel, gbc_comPortPanel);

		JComboBox<String> comPortComboBox = new JComboBox<String>();
		GridBagConstraints gbc_comPortComboBox = new GridBagConstraints();
		gbc_comPortComboBox.weightx = 1.0;
		gbc_comPortComboBox.anchor = GridBagConstraints.EAST;
		gbc_comPortComboBox.fill = GridBagConstraints.HORIZONTAL;
		gbc_comPortComboBox.gridx = 1;
		gbc_comPortComboBox.gridy = 0;
		comPortPanel.add(comPortComboBox, gbc_comPortComboBox);
		comPortComboBox.addItem(COM1);
		comPortComboBox.addItem(COM2);
		comPortComboBox.addItem(COM3);
		comPortComboBox.addItem(COM4);
		comPortComboBox.addItem(COM5);
		comPortComboBox.addItem(COM6);
		comPortComboBox.addItem(COM7);
		comPortComboBox.addItem(COM8);
		comPortComboBox.addItem(COM9);
		comPortComboBox.addItem(COM10);

		JButton linkBtn = new JButton("\u8FDE\u63A5\u4E32\u53E3");
		GridBagConstraints gbc_linkBtn = new GridBagConstraints();
		gbc_linkBtn.insets = new Insets(0, 0, 5, 0);
		gbc_linkBtn.anchor = GridBagConstraints.EAST;
		gbc_linkBtn.gridx = 0;
		gbc_linkBtn.gridy = 3;
		initPanel.add(linkBtn, gbc_linkBtn);

		JPanel statusPanel = new JPanel();
		controlPanel.add(statusPanel);

		JTextArea statusTextArea = new JTextArea(35, 25);
		statusTextArea.setEditable(false);
		statusTextArea.setFont(new Font("宋体", Font.BOLD | Font.ITALIC, 13));
		statusTextArea.setLineWrap(true);
		statusTextArea.setWrapStyleWord(true);

		JScrollPane statusScrollPane = new JScrollPane(statusTextArea);
		// statusScrollPane.setBorder(new CompoundBorder(new TitledBorder(
		// UIManager.getBorder("TitledBorder.border"),
		// "\u72B6\u6001\u4FE1\u606F", TitledBorder.LEADING,
		// TitledBorder.TOP, null, null), null));
		statusScrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		statusScrollPane
				.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		statusPanel.add(statusScrollPane);

		JPanel Dispalypanel = new JPanel();
		MainPanel.add(Dispalypanel, BorderLayout.CENTER);
		Dispalypanel.setLayout(new BoxLayout(Dispalypanel, BoxLayout.X_AXIS));

		JTextArea editorTextArea = new JTextArea(40, 40);
		editorTextArea.setWrapStyleWord(true);

		JScrollPane editorArearScrollPane = new JScrollPane(editorTextArea);
		editorArearScrollPane
				.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		editorArearScrollPane
				.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
		Dispalypanel.add(editorArearScrollPane);
	}
}
